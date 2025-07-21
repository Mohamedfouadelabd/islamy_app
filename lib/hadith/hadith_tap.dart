import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_project/Provider/app_config_provider.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:islamy_project/hadith/hadith_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadithTap extends StatefulWidget {
  @override
  State<HadithTap> createState() => _HadithTapState();
}

class _HadithTapState extends State<HadithTap> {
 List<Hadith> ahadith=[];

  @override
  Widget build(BuildContext context) {
  if(ahadith.isEmpty){
    loadHadith();
  }
   var provider =Provider.of<AppConfigProvider>(context);
    return Column(
      children: [Center(child: Image.asset('assets/images/hadeth_logo.png')),

      Divider(
        color: provider.isDark()?MyTheme.yellow:MyTheme.primarylight,
        thickness: 3,
      ),
      Text(AppLocalizations.of(context)!.hadithName,
      style: Theme.of(context).textTheme.headline1,
      ),
        Divider(
          color: provider.isDark()?MyTheme.yellow:MyTheme.primarylight,
          thickness: 3,
        ),

Expanded(
  child:   ListView.separated(
      itemBuilder:(context, index) {
        return 
          HadithItem(hadith: ahadith[index]  );
      }, 
      separatorBuilder: (context, index) {
        return       Divider(
          color: provider.isDark()?MyTheme.yellow:MyTheme.primarylight,
          thickness: 3,
        );
      },
      itemCount: ahadith.length),
),



      ],




    );
  }

void loadHadith()async{
 String content=await rootBundle.loadString('assets/fiels/ahadeth.txt');
 List<String>hadithList=   content.split('#\r\n');
    for(int i=0;i<hadithList.length;i++){
List<String>hadithLines=hadithList[i].split('\n');
     String titel= hadithLines[0];
  hadithLines.removeAt(0);
  Hadith hadith=Hadith(titel: titel, content: hadithLines);
    ahadith.add(hadith);
    setState(() {

    });
    }
}
}
class Hadith {
  String titel;
List <String> content;
Hadith({required this.titel,required this.content});
}




