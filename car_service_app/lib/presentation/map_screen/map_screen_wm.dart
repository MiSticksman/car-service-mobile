import 'dart:typed_data';
import 'dart:ui';

import 'package:car_service_app/domain/model/map/service_dto.dart';
import 'package:car_service_app/internal/logger.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'map_screen_model.dart';
import 'map_screen_widget.dart';

abstract interface class IMapScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  BehaviorSubject<List<ServiceDto>> get pointsController;

  BehaviorSubject<ServiceDto?> get selectedPointController;

  Stream<List<MapObject>> get mapObjectsStream;

  void onMapCreated(YandexMapController controller);

  void zoomIn();

  void zoomOut();
}

MapScreenWidgetModel defaultMapScreenWidgetModelFactory(BuildContext context) {
  return MapScreenWidgetModel(MapScreenModel());
}

// TODO: cover with documentation
/// Default widget model for MapScreenWidget
class MapScreenWidgetModel extends WidgetModel<MapScreenWidget, MapScreenModel>
    with ThemeProvider
    implements IMapScreenWidgetModel {
  MapScreenWidgetModel(super.model);

  YandexMapController? _yandexMapController;

  @override
  final pointsController = BehaviorSubject<List<ServiceDto>>();
  @override
  final selectedPointController = BehaviorSubject<ServiceDto?>();

  @override
  Stream<List<MapObject>> get mapObjectsStream =>
      pointsController.map(_mapPoints).distinct();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
  }

  @override
  void dispose() {
    pointsController.close();
    selectedPointController.close();
    super.dispose();
  }

  @override
  void onMapCreated(YandexMapController controller) {
    _yandexMapController = controller;
    _loadPoints();
  }

  Future<void> _loadPoints() async {
    try {
      final points = [
        ServiceDto(
          id: 1,
          name: 'Автосервис «Универсал-Авто»',
          description: 'Ремонт и обслуживание автомобилей в Воронеже',
          phone: '8 (473) 212-11-48',
          workHours: '09:00–19:00',
          lat: 51.67971960461604,
          lon: 39.168883770529845,
          address: 'пр. Труда, 48ш, Воронеж, Воронежская обл.',
        ),
        ServiceDto(
          id: 2,
          name: 'AutoServisVRN',
          description: 'Круглосуточный автосервис',
          phone: '8 (900) 952-33-49',
          workHours: 'круглосуточно',
          lat: 51.668746895649406,
          lon: 39.16783039038193,
          address: 'ул. Конструкторов, 21а, Воронеж, Воронежская обл.',
        ),
      ];
      pointsController.add(points);

      final latList = points.map((p) => p.lat).toList();
      final lonList = points.map((p) => p.lon).toList();
      if (latList.isNotEmpty && lonList.isNotEmpty) {
        final lat = latList[latList.length ~/ 2];
        final lon = lonList[lonList.length ~/ 2];

        _yandexMapController?.moveCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: Point(
                latitude: lat?.toDouble() ?? 0,
                longitude: lon?.toDouble() ?? 0,
              ),
              zoom: 10,
            ),
          ),
          animation: _animation,
        );
      }
    } catch (e, s) {
      logger.e(e.toString(), error: e, stackTrace: s);
    }
  }

  final _animation = const MapAnimation(
    type: MapAnimationType.smooth,
    duration: 1.0,
  );

  List<MapObject> _mapPoints(List<ServiceDto> event) {
    return [
      ClusterizedPlacemarkCollection(
        mapId: const MapObjectId('stores_cluster'),
        radius: 30,
        minZoom: 15,
        onClusterAdded: (_, cluster) async {
          return cluster.copyWith(
            appearance: cluster.appearance.copyWith(
              opacity: 1,
              icon: PlacemarkIcon.single(
                PlacemarkIconStyle(
                  image: BitmapDescriptor.fromBytes(
                    await _createClusterIcon(cluster),
                  ),
                  zIndex: 10,
                ),
              ),
            ),
          );
        },
        onClusterTap: (_, cluster) async {
          final pos = await _yandexMapController?.getCameraPosition();
          final zoom = pos?.zoom ?? 5;
          _yandexMapController?.moveCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: cluster.appearance.point,
                zoom: zoom + 2,
              ),
            ),
            animation: _animation,
          );
        },
        placemarks:
            event.map(_mapPointObject).whereType<PlacemarkMapObject>().toList(),
      ),
    ];
  }

  Future<Uint8List> _createClusterIcon(Cluster cluster) async {
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    const size = Size(100, 100);
    final fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    final strokePaint = Paint()
      ..color = theme.colorScheme.background
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    const radius = 40.0;

    final textPainter = TextPainter(
      text: TextSpan(
        text: cluster.size.toString(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 45,
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);

    final textOffset = Offset(
      (size.width - textPainter.width) / 2,
      (size.height - textPainter.height) / 2,
    );
    final circleOffset = Offset(
      size.height / 2,
      size.width / 2,
    );

    canvas.drawCircle(circleOffset, radius, fillPaint);
    canvas.drawCircle(circleOffset, radius, strokePaint);
    textPainter.paint(canvas, textOffset);

    final image = await recorder.endRecording().toImage(
          size.width.toInt(),
          size.height.toInt(),
        );
    final pngBytes = await image.toByteData(format: ImageByteFormat.png);

    return pngBytes!.buffer.asUint8List();
  }

  Future<void> moveToPoint(ServiceDto pickup, [Point? point]) async {
    var cord = point;
    final lat = pickup.lat?.toDouble() ?? 0;
    final lon = pickup.lon?.toDouble() ?? 0;
    cord ??= Point(latitude: lat, longitude: lon);

    selectedPointController.add(pickup);
    await _yandexMapController?.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: cord,
        ),
      ),
      animation: _animation,
    );
  }

  @override
  void zoomIn() {
    _yandexMapController?.moveCamera(
      CameraUpdate.zoomIn(),
      animation: _animation,
    );
  }

  @override
  void zoomOut() {
    _yandexMapController?.moveCamera(
      CameraUpdate.zoomOut(),
      animation: _animation,
    );
  }

  PlacemarkMapObject? _mapPointObject(ServiceDto pickup) {
    final lat = pickup.lat;
    final lon = pickup.lon;

    if (lat == null || lon == null) {
      return null;
    }

    final point = Point(
      latitude: lat.toDouble(),
      longitude: lon.toDouble(),
    );

    return PlacemarkMapObject(
      point: point,
      mapId: MapObjectId('show_map_collection-${pickup.id}'),
      opacity: 1,
      onTap: (place, _) {
        moveToPoint(pickup, place.point);
      },
      icon: PlacemarkIcon.single(
        PlacemarkIconStyle(
          image: BitmapDescriptor.fromAssetImage('lib/presentation/map_screen/assets/service_point.png'),
          scale: 0.8,
          isVisible: true,
          zIndex: 10,
          isFlat: false,
        ),
      ),
    );
  }
}
