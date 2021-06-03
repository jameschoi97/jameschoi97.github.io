import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/ui/widgets/my_appbar.dart';
import 'package:jameschoi97/ui/widgets/my_resume.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';

class ResumePage extends StatelessWidget {
  static final name = '/resume';

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
        child: MyAppBar(),
      ),
      body: AspectRatio(
          aspectRatio: 210/297,
          child: MyResume()
      ),
    );
  }

}