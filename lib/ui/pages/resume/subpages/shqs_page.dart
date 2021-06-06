import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/ui/widgets/my_appbar.dart';
import 'package:jameschoi97/ui/widgets/my_grid.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';
import 'package:get/get.dart';
import 'package:jameschoi97/ui/widgets/responsive_widget.dart';

class ShqsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final List<Widget> shqsItems = [
      AspectRatio(aspectRatio: 1,
          child: Text('Placeholder')),
      AspectRatio(aspectRatio: 1, child: Text('Placeholder')),
      AspectRatio(aspectRatio: 1, child: Text('Placeholder')),
      AspectRatio(aspectRatio: 1, child: Text('Placeholder')),
      AspectRatio(aspectRatio: 1, child: Text('Placeholder')),
      AspectRatio(aspectRatio: 1, child: Text('Placeholder')),
      AspectRatio(aspectRatio: 1, child: Text('Placeholder')),
      AspectRatio(aspectRatio: 1, child: Text('Placeholder')),
      AspectRatio(aspectRatio: 1, child: Text('Placeholder')),
      AspectRatio(aspectRatio: 1, child: Text('Placeholder')),


    ];


    return MyScaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                child: TextButton(
                    onPressed: () => Get.back(),
                    child: Text(
                      '< Back to resume',
                      style: TextStyle(
                        fontSize: 15,
                      )
                    )),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Text('GE Appliances SmartHQ Service',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                letterSpacing: 2,
              )
            ),
          ),
          Container(
            width: 360,
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            color: Color(0xFF364359),
            child: Image.asset('assets/images/shqs_logo.png')
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 750,
              ),
              child: Text('During my time at GE Appliances, I was working with the Smart HQ Service team. '
                  'Smart HQ Service helps technicians provide better repair services by giving them resources such '
                  'as diagnostics data for the appliances. My main job in the team was to work on the cross-platform app, '
                  'so that the technicians could access the app not only on their phones, but also'
                  ' through web on a bigger screen. These are some of the features I added to SmartHQ Service during my internship:',
                style: TextStyle(
                  fontSize: 16,
                )
              )
            ),
          ),
          MyGrid(
            isScrollable: false,
            children: shqsItems,
            hasBorder: true,
            max_grid_size: 600,
          )
        ]
      )
    );
  }
}