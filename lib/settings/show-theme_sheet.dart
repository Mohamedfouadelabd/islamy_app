

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_project/Provider/app_config_provider.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:provider/provider.dart';
class ThemeSheet extends StatefulWidget {

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Column(
     crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      InkWell(
       onTap: (){
provider.changeTheme(ThemeMode.light);

       },
        child:provider.isDark()?unselected(AppLocalizations.of(context)!.light,provider)
            : selected(AppLocalizations.of(context)!.light,provider),


      ),
        InkWell(
         onTap: (){
           provider.changeTheme(ThemeMode.dark);
         },
          child:provider.isDark()?selected(AppLocalizations.of(context)!.dark,provider)
              : unselected(AppLocalizations.of(context)!.dark,provider),
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
