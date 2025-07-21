

import 'package:flutter/material.dart';
import 'package:islamy_project/hadith/hadith_detils.dart';

import 'hadith_tap.dart';

class HadithItem extends StatelessWidget {
  Hadith hadith;

HadithItem({required this.hadith});
  @override
  Widget build(BuildContext context) {
    return InkWell(
   onTap: (){
     Navigator.of(context).pushNamed(HadithDetils.routeName,
     arguments: hadith,
     );

   },
      child: Text(hadith.titel,
      style: Theme.of(context).textTheme.bodyText1,
      textAlign: TextAlign.center,

      ),
    );
  }
}
