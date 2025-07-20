import 'package:flutter/material.dart';
import 'package:islamy_project/Home_Screen.dart';
import 'package:islamy_project/Provider/app_config_provider.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_project/hadith/hadith_detils.dart';
import 'package:islamy_project/quran/soura_detils.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    return MaterialApp(
     themeMode: provider.appTheme,
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
   SouraDetils.routeName:(context) => SouraDetils(),
        HadithDetils.routeName:(context) => HadithDetils(),
      },
      theme: MyTheme.lighttheme,
      darkTheme: MyTheme.darktheme,
    );
  }
}
