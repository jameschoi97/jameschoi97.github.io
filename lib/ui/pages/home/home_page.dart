import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';
import 'package:jameschoi97/ui/widgets/responsive_widget.dart';

import 'package:get/get.dart';

class HomePage extends GetView<MainController> {
  static final name = '/home';

  final subpages = [
    Pages.aboutMe,
    Pages.resume,
    Pages.movies,
  ];

  final _themeController = Get.find<MyThemeController>();

  @override
  Widget build(BuildContext context) {
    final pageButtons = Map.fromIterable(subpages,
      key: (entry) => entry as Pages,
      value: (entry) {
      final page = entry as Pages;
      return InkWell(
          hoverColor: _themeController.theme.colorSet.appBarHoverColor,
          onHover: ResponsiveWidget.isSmallScreen(context)
              ? null
              : (hovering) {
            if (hovering) {
              controller.hoverPage.value = page;
            } else {
              controller.hoverPage.value = Pages.home;
            }
          },
          onTap: () {
            controller.currentPage.value = page;
            Get.toNamed(page.pageName);
          },
          child: Text(
            page.name.toUpperCase(),
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              letterSpacing: 4,
            ),
          ),
        );
      });

    return MyScaffold(
      body: ResponsiveWidget(
        smallScreen: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
                child: getItem(context, Pages.home)
            ),
            Column(
              children: subpages.map((page) => Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 50),
                      child: getItem(context,page)
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                      child: pageButtons[page]!
                  ),
                ]
              )).toList(),
            ),
          ],
        ),
        largeScreen: Row(
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: subpages.map((page) => Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: pageButtons[page],
                  )).toList(),
                )),
            Expanded(
                flex: 3,
                child: Obx(() => ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height,
                  ),
                  child: Stack(
                        children: pages
                            .map((page) => AnimatedOpacity(
                                  opacity: controller.hoverPage.value == page
                                      ? 1
                                      : 0,
                                  duration: Duration(milliseconds: 200),
                                  child: Center(child: getItem(context,page)),
                                ))
                            .toList(),
                      ),
                )))
          ],
        ),
      ),
    );
  }

  Widget getItem(BuildContext context, Pages page) {
    if (page == Pages.home) {
      return Text(
          'Welcome to my website!\n'
              '\nThis is a work in progress, but I will aim to perfect it over the next '
              'few months, years, or the rest of my life.',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width < 600 ? 20 : 30,
            fontWeight: FontWeight.w600,
            letterSpacing: 4,
          ),
          textAlign: TextAlign.center,
      );
    } else if (page == Pages.aboutMe) {
      return CarouselSlider(
          items: [
            Image.asset('assets/images/me_1.png', fit: BoxFit.fitHeight),
            Image.asset('assets/images/me_2.png', fit: BoxFit.fitHeight),
            Image.asset('assets/images/me_3.png', fit: BoxFit.fitHeight)
          ],
          options: CarouselOptions(
            aspectRatio: 16/14,
            viewportFraction: 0.7,
            autoPlay: true,
            autoPlayInterval: Duration(milliseconds: 1500),
            pauseAutoPlayOnTouch: false,
            pauseAutoPlayOnManualNavigate: false,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            scrollPhysics: NeverScrollableScrollPhysics(),
          )
      );
    } else if (page == Pages.resume) {
      return Image.asset('assets/images/resume.png', fit: BoxFit.fitHeight);
    } else if (page == Pages.movies) {
      return Container();
    } else {
      return Container();
    }
  }
}
