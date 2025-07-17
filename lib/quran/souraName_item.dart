

import 'package:flutter/material.dart';
import 'package:islamy_project/quran/soura_detils.dart';

class SouraNameItem extends StatelessWidget {
 String name;
 int index;
 SouraNameItem({required this.name,required this.index});
 @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
     onTap: (){
       Navigator.of(context).pushNamed(SouraDetils.routeName,
       arguments: SouraArgs(name: name, index: index));

     },
        child: Text(name,
        style: Theme.of(context).textTheme.headline1,

        ),
      ),
    );
  }
}
class SouraArgs{
  String name;
int index;
SouraArgs({required this.name,required this.index});
}
