import 'package:car_service_app/app/app_color.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'map_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for MapScreen module
class MapScreenWidget extends ElementaryWidget<IMapScreenWidgetModel> {
  const MapScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultMapScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IMapScreenWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          title: Column(
            children: [
              Text('Автосервисы Car Kit'),
              SizedBox(height: 8),
              Text(
                'Воронеж',
                style: theme.textTheme.displayMedium,
              ),
            ],
          ),
          actions: const [CloseButton()],
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: StreamBuilder(
            stream: wm.mapObjectsStream,
            builder: (context, snapshot) {
              final points = snapshot.data ?? [];
              return Stack(
                children: [
                  Positioned.fill(
                    child: YandexMap(
                      // nightModeEnabled: true,
                      mapObjects: points,
                      onMapCreated: wm.onMapCreated,
                    ),
                  ),
                  Positioned(
                    top: 150,
                    right: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          elevation: 1,
                          type: MaterialType.button,
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: wm.zoomIn,
                                child: Ink(
                                  width: 40,
                                  height: 40,
                                  child: Icon(
                                    Icons.add,
                                    color: theme.colorScheme.background,
                                    size: 20,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: wm.zoomOut,
                                child: Ink(
                                  width: 40,
                                  height: 40,
                                  child: Icon(
                                    Icons.remove,
                                    color: theme.colorScheme.background,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // const SizedBox(height: 20),
                        // _ControlButton(
                        //   onPressed: presenter.moveToCurrentLocation,
                        //   iconData: const Icon(
                        //     geoIcon,
                        //     color: theme.black21,
                        //     size: 40,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: StreamBuilder(
                      stream: wm.mapObjectsStream,
                      builder: (context, snapshot) {
                        return Card(
                          margin: EdgeInsets.zero,
                          clipBehavior: Clip.hardEdge,
                          color: theme.colorScheme.background,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: StreamBuilder(
                            stream: wm.selectedPointController,
                            builder: (context, snapshotPvz) {
                              final selectedPoint = snapshotPvz.data;

                              if (selectedPoint == null) {
                                return const Center(
                                  child: SizedBox.shrink(),
                                );
                              }

                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20),
                                    Text(
                                      selectedPoint.name!,
                                      style: theme.textTheme.displayMedium,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(selectedPoint.workHours!),
                                    const SizedBox(height: 5),
                                    Text(
                                      selectedPoint.address!,
                                      style:
                                          theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                      ),
                                      child: ElevatedButton(
                                        onPressed: wm.selectService,
                                        child: const Center(
                                          child: Text('Записаться сюда'),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  if (points.isEmpty)
                    const Positioned.fill(
                      child: IgnorePointer(
                        ignoring: true,
                        child: Center(
                          child: LoadingIndicator(color: AppColor.black21),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
