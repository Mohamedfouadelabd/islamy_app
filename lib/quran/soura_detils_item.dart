

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/app_config_provider.dart';
import '../Theme/my_theme.dart';


class SouraDetilsItem extends StatelessWidget {
String content;
int index;
SouraDetilsItem({required this.content,required this.index});
@override

  Widget build(BuildContext context) {
  var provider=Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
color: provider.isDark()?MyTheme.primarydark: MyTheme.Wihte,
    child: Text('$content{${index+1}}',
   textAlign: TextAlign.center,


   ),
    );
  }
}
