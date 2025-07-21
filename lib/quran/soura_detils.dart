

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_project/Provider/app_config_provider.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:islamy_project/quran/souraName_item.dart';
import 'package:islamy_project/quran/soura_detils_item.dart';
import 'package:provider/provider.dart';

class SouraDetils extends StatefulWidget {
static const String routeName='soura_detils';

  @override
  State<SouraDetils> createState() => _SouraDetilsState();
}

class _SouraDetilsState extends State<SouraDetils> {
List<String> verse=[];

  @override
  Widget build(BuildContext context) {

   var provider=Provider.of<AppConfigProvider>(context);
   var args=ModalRoute.of(context)!.settings.arguments as SouraArgs;
   if(verse.isEmpty){
     loadFile(args.index);

   }
   return  Stack(
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
            title: Text(args.name,

            ),

          ),
body:Column(
  children: [

    Expanded(
      child: ListView.builder(
        itemCount: verse.length,
        itemBuilder: (context, index) {
          return SouraDetilsItem(content: verse[index] ,index: index);

        },),
    ),
  ],
)


        ),
      ],
    );
  }

void loadFile(int index)async{
 String content=await rootBundle.loadString('assets/fiels/${index+1}.txt');
List<String> lines=content.split('\n');
verse=lines;
  setState(() {

  });
  }
}
