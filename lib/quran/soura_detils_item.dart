

import 'package:flutter/material.dart';
import 'package:islamy_project/Theme/my_theme.dart';

class SouraDetilsItem extends StatelessWidget {
String content;
int index;
SouraDetilsItem({required this.content,required this.index});
@override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height*0.1,
  width:  MediaQuery.of(context).size.width*0.1,
    child: Text('$content{${index+1}}',
   textAlign: TextAlign.center,


   ),
    );
  }
}
