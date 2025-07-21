
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_project/Provider/app_config_provider.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:islamy_project/settings/show-theme_sheet.dart';
import 'package:islamy_project/settings/show_langugae_sheet.dart';
import 'package:provider/provider.dart';
class SettingsTap extends StatefulWidget {


  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  @override
  Widget build(BuildContext context) {
  var provider=Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyText1,

          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.05,
        ),
        InkWell(
         onTap: (){
           showLanguage();
         },
          child: Container(

            decoration: BoxDecoration(
                color:provider.isDark()?MyTheme.yellow:MyTheme.primarylight,
              borderRadius: BorderRadius.circular(20)

            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            child:   Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                Text(provider.appLanguage=='en'?AppLocalizations.of(context)!.english:
                AppLocalizations.of(context)!.arabic
                  ,

                  style: Theme.of(context).textTheme.bodyText1,



                ),

                Icon(Icons.arrow_drop_down,
                color: provider.isDark()?MyTheme.Wihte:MyTheme.black,


                )

              ],

            ),
          ),
        ),
     SizedBox(
       height: MediaQuery.of(context).size.height*0.1,
     ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.bodyText1,

          ),
        ),
        InkWell(
         onTap: (){
           showTheme();

         },

          child: Container(

            decoration: BoxDecoration(
                color:provider.isDark()?MyTheme.yellow:MyTheme.primarylight,
                borderRadius: BorderRadius.circular(20)

            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            child:   Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                Text(AppLocalizations.of(context)!.selectTheme,

                  style: Theme.of(context).textTheme.bodyText1,



                ),

                Icon(Icons.arrow_drop_down,
                  color: provider.isDark()?MyTheme.Wihte:MyTheme.black,
                )

              ],

            ),
          ),
        ),
      ],
    );
  }

  void showLanguage() {
    showModalBottomSheet(context: context,
        builder: (context) {
          return LanguageSheet();
        },
    );


  }
  void showTheme() {
    showModalBottomSheet(context: context,
      builder: (context) {
        return ThemeSheet();
      },
    );


  }
}

