import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/pages/movies/movies_controller.dart';
import 'package:jameschoi97/ui/widgets/my_movies.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';
import 'package:jameschoi97/ui/widgets/responsive_widget.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  static final name = '/home';

  final subpages = [
    Pages.aboutMe,
    Pages.resume,
    Pages.movies,
  ];

  final _themeController = Get.find<MyThemeController>();
  final _mainController = Get.find<MainController>();
  final _moviesController = Get.find<MoviesController>();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final smallScreen = ResponsiveWidget.isSmallScreen(context);
    final moviesContentLength = MediaQuery.of(context).size.width;
    _mainController.currentPage.value = Pages.home;
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
                      if (page == Pages.movies) {
                        _mainController.movieController.showPanel();
                      }
                      _mainController.hovering.value = true;
                      _mainController.hoverPage.value = page;
                    } else {
                      _mainController.hovering.value = false;
                      _mainController.hoverPage.value = Pages.home;
                      if (page == Pages.movies && _mainController.idlePage.value != Pages.movies) {
                        _mainController.movieController.hidePanel();
                      }
                    }
                  },
            onTap: () {
              Get.toNamed(page.pageName);
            },
            child: Obx(() => Text(
              page.name.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: _mainController.getShowPage() == page && ResponsiveWidget.isLargeScreen(context) ? 50 : 40,
                fontWeight: FontWeight.w600,
                letterSpacing: 4,
              ),
            )),
          );
        });

    return MyScaffold(
      scrollController: _scrollController ..addListener(() {
        if (_scrollController.offset >= _scrollController.position.maxScrollExtent - moviesContentLength && smallScreen) {
          _moviesController.showPanel();
        }

        if (_scrollController.offset < _scrollController.position.maxScrollExtent - moviesContentLength && smallScreen) {
          _moviesController.hidePanel();
        }
      }),
      body: ResponsiveWidget(
        smallScreen: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [/*
            Container(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
                child: getItem(context, Pages.home)),*/
            Column(
              children: subpages
                  .map((page) => Column(
                  children: [
                        GestureDetector(
                          onTap: () => Get.toNamed(page.pageName),
                          child: Container(
                              height: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(vertical: 50),
                              child: Center(child: getItem(context, page))),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: pageButtons[page]!),
                      ]))
                  .toList(),
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
                  children: subpages
                      .map((page) => Container(
                            padding: EdgeInsets.symmetric(vertical: 30),
                            child: pageButtons[page],
                          ))
                      .toList(),
                )),
            Expanded(
                flex: 5,
                child: Obx(() => ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height,
                      ),
                      child: Stack(
                        children: subpages
                            .map((page) => AnimatedOpacity(
                                  opacity: _mainController.getShowPage() == page
                                      ? 1
                                      : 0,
                                  duration: Duration(milliseconds: 200),
                                  child: Center(child: getItem(context, page)),
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
    if (page == Pages.aboutMe) {
      return Center(
        child: CarouselSlider(
            items: [
              Center(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Image.asset('assets/images/me_1.png', fit: BoxFit.fitHeight),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03, vertical: 30),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 20,
                            )
                          ]
                      ),
                      child:
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text('SMART',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white.withOpacity(0.8),
                            letterSpacing: 3
                          ),)
                        )

                      ,
                    )
                  ],
                ),
              ),
              Center(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Image.asset('assets/images/me_2.jpg', fit: BoxFit.fitHeight),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.01, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 5,
                            blurRadius: 20,
                          )
                        ]
                      ),
                      child:
                      FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text('FRIENDLY',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.8),
                                letterSpacing: 3
                            ),)
                      )

                      ,
                    )
                  ],
                ),
              ),
              Center(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Image.asset('assets/images/me_3.JPG', fit: BoxFit.fitHeight),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.065, vertical: 30),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 20,
                            )
                          ]
                      ),
                      child:
                      FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text('CONFIDENT',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.8),
                                letterSpacing: 2
                            ),)
                      )

                      ,
                    )
                  ],
                ),
              ),
            ],
            options: CarouselOptions(
              aspectRatio: 16 / 14,
              viewportFraction: 0.7,
              autoPlay: true,
              autoPlayInterval: Duration(milliseconds: 1500),
              pauseAutoPlayOnTouch: false,
              pauseAutoPlayOnManualNavigate: false,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              scrollPhysics: NeverScrollableScrollPhysics(),
            )),
      );
    } else if (page == Pages.resume) {
      return Image.asset('assets/images/resume.jpg', fit: BoxFit.fitHeight);
    } else if (page == Pages.movies) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: ResponsiveWidget(
          smallScreen: MoviePanel(
            column: 9, row: 4, images: _mainController.movieController.imageNames, width: MediaQuery.of(context).size.width),
          largeScreen: MoviePanel(
              column: 13, row: 5, images: _mainController.movieController.imageNames, width: MediaQuery.of(context).size.width,),
        ),
      );
    } else {
      return Container();
    }
  }
}
