

import 'package:flutter/material.dart';
import 'package:islamy_project/Provider/app_config_provider.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LanguageSheet extends StatefulWidget {


  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: (){
            provider.changeLanguage('en');

          },
          child:provider.appLanguage == 'en'
              ? selected(AppLocalizations.of(context)!.english, provider)
              : unselected(AppLocalizations.of(context)!.english, provider),
        ),
        InkWell(
          onTap: (){
            provider.changeLanguage('ar');
          },
          child: provider.appLanguage == 'ar'
              ? selected(AppLocalizations.of(context)!.arabic, provider)
              : unselected(AppLocalizations.of(context)!.arabic, provider),
        ),

      ],
    );
  }

  Widget selected(String titel,AppConfigProvider provider){
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(titel,
            style:  TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: provider.isDark()?MyTheme.yellow:MyTheme.primarylight

            ),

          ),
          Icon(Icons.check,
              color: provider.isDark()?MyTheme.yellow:MyTheme.primarylight




          )
        ],
      ),
    );
  }

  Widget unselected(String titel,AppConfigProvider provider){
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(titel,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: provider.isDark()?MyTheme.Wihte:MyTheme.black

            ),

          ),

        ],
      ),
    );

  }
}
