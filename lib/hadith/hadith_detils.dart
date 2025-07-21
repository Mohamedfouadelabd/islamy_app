

import 'package:flutter/material.dart';
import 'package:islamy_project/Provider/app_config_provider.dart';
import 'package:islamy_project/hadith/hadith_content_item.dart';
import 'package:islamy_project/hadith/hadith_tap.dart';
import 'package:provider/provider.dart';

class HadithDetils extends StatelessWidget {
 static const String routeName='hadith_detils';

  @override
  Widget build(BuildContext context) {
  var provider=Provider.of<AppConfigProvider>(context);
  var args =ModalRoute.of(context)!.settings.arguments as Hadith;
    return Stack(
      children: [
        provider.isDark()
            ? Image.asset(
          'assets/images/dark_bg.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        )
            : Image.asset(
          'assets/images/background_bg.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),

        Scaffold(
          appBar: AppBar(
            title: Text(args.titel,
              style: Theme.of(context).textTheme.headline1,

            ),

          ),

body: ListView.builder(
  itemCount: args.content.length,
  itemBuilder: (context, index) {

  return HadithContentItem(content: args.content[index]);
},),


        ),
      ],
    );
  }
}
