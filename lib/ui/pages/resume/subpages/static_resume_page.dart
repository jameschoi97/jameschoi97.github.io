import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/ui/widgets/my_appbar.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';
import 'package:get/get.dart';

class StaticResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 56),
          child: MyAppBar(),
        ),
        body: Column(children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                child: TextButton(
                    onPressed: () => Get.back(),
                    child: Text('< Back to resume',
                        style: TextStyle(
                          fontSize: 15,
                        ))),
              ),
            ],
          ),
          Image.asset('assets/images/resume.png')
        ]));
  }
}
