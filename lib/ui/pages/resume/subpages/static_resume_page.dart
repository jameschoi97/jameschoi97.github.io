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
        body: Image.asset('assets/images/resume.jpg', width: MediaQuery.of(context).size.width,
        fit: BoxFit.fitHeight));
  }
}
