

import 'package:flutter/material.dart';
import 'package:islamy_project/Theme/my_theme.dart';

class HadithContentItem extends StatelessWidget {
  String content;
  HadithContentItem({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

      decoration: BoxDecoration(

        color: MyTheme.Wihte,

      ),

      child: Text(content,
      textAlign: TextAlign.center,

      ),
    );
  }
}
