import 'package:car_service_app/app/app_color.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
                child: GestureDetector(
                  onTap: () {
                    launchUrl(Uri.parse('https://www.ozon.ru/product/miostimulyator-massazher-i-trenazher-dlya-pohudeniya-smart-fitness-ems-trenazher-dlya-pressa-i-1154198433/?asb=bSoq%252FApOSmT7gTEVd1V4BOYBBFvSy2mJyMgUAtONU8g%253D&asb2=sXj23nHBjCR1JtJd4kE5ngl6MVmMH_nksNumrQu3rsaTS91cjfwdRAEpfjCNOWaaDWj1AGn_qsCBzZxvQRQIFg&avtc=1&avte=2&avts=1712879715&keywords=%D1%83%D0%BC%D0%BD%D1%8B%D0%B9+%D1%81%D0%B5%D0%BA%D1%83%D0%BD%D0%B4%D0%BE%D0%BC%D0%B5%D1%80'));
                  },
                  child: Container(
                    color: AppColor.green,
                  ),
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
