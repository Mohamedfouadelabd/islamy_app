

import 'package:flutter/material.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:provider/provider.dart';

import '../Provider/app_config_provider.dart';

class HadithContentItem extends StatelessWidget {
  String content;
  HadithContentItem({required this.content});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),

      decoration: BoxDecoration(

        color:provider.isDark()?MyTheme.primarydark: MyTheme.Wihte,

      ),

      child: Text(content,
      textAlign: TextAlign.center,

      ),
    );
  }
}
