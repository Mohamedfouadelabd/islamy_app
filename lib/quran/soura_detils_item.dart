

import 'package:flutter/material.dart';


class SouraDetilsItem extends StatelessWidget {
String content;
int index;
SouraDetilsItem({required this.content,required this.index});
@override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

    child: Text('$content{${index+1}}',
   textAlign: TextAlign.center,


   ),
    );
  }
}
