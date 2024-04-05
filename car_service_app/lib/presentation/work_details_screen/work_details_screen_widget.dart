import 'package:car_service_app/app/app_color.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'work_details_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for WorkDetailsScreen module
class WorkDetailsScreenWidget
    extends ElementaryWidget<IWorkDetailsScreenWidgetModel> {
  const WorkDetailsScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultWorkDetailsScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IWorkDetailsScreenWidgetModel wm) {
    final localizations = wm.localizations;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(localizations.detailsSelection),
          automaticallyImplyLeading: false,
          actions: const [CloseButton()],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 20,
          ),
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (_, index) {
              return AspectRatio(
                aspectRatio: 150 / 50,
                child: Container(
                  color: AppColor.green,
                ),
              );
            },
            separatorBuilder: (_, __) => const SizedBox(height: 12),
          ),
        ),
      ),
    );
  }
}
