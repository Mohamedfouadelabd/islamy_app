import 'package:flutter/material.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:islamy_project/hadith/hadith_tap.dart';
import 'package:islamy_project/quran/quran_tap.dart';
import 'package:islamy_project/radio/radio_tap.dart';
import 'package:islamy_project/sebha/sepha_tap.dart';
import 'package:islamy_project/settings/setting_tap.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'Provider/app_config_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
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
         title: Text(AppLocalizations.of(context)!.appTitle,
         style: Theme.of(context).textTheme.headline1,
         ),

       ),

bottomNavigationBar: Theme(
data: Theme.of(context).copyWith(
  canvasColor: MyTheme.primarylight
),

  child:   BottomNavigationBar(
    currentIndex: selectedIndex,
    onTap: (index){
      selectedIndex=index;
    setState(() {

    });
      },
    items: [
      BottomNavigationBarItem(
        label:AppLocalizations.of(context)!.quran,
        icon:  ImageIcon(AssetImage('assets/images/icon_quran.png'))

      ),
      BottomNavigationBarItem(
          label:AppLocalizations.of(context)!.hadith,
          icon:  ImageIcon(AssetImage('assets/images/icon_hadeth.png'))

      ),
      BottomNavigationBarItem(
          label:AppLocalizations.of(context)!.radio,
          icon:  ImageIcon(AssetImage('assets/images/icon_radio.png'))

      ),
      BottomNavigationBarItem(
          label:AppLocalizations.of(context)!.sebha,
          icon:  ImageIcon(AssetImage('assets/images/icon_sebha.png'))

      ),
      BottomNavigationBarItem(
          label:AppLocalizations.of(context)!.settings,
          icon:  Icon(Icons.settings)

      ),
    ],
  ),
),
    body:taps[selectedIndex],

     ),
      ],
    );
  }
List<Widget> taps=[
  QuranTap(),
  HadithTap(),
  RadioTap(),
  SebhaTap(),
  SettingsTap(),


];

}
