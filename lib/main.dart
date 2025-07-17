import 'package:flutter/material.dart';
import 'package:islamy_project/Home_Screen.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      theme: MyTheme.lighttheme,
      darkTheme: MyTheme.darktheme,
    );
  }
}
