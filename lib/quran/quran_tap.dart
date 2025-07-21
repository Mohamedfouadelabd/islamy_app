import 'package:flutter/material.dart';
import 'package:islamy_project/Provider/app_config_provider.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:islamy_project/quran/souraName_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTap extends StatelessWidget {
  List<String> SouraName = [
    " الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      children: [
        Center(child: Image.asset('assets/images/quran_screen_logo.png')),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Divider(
          thickness: 3,
          color: provider.isDark() ? MyTheme.yellow : MyTheme.primarylight,
        ),
        Text(
          AppLocalizations.of(context)!.suraName,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Divider(
          thickness: 3,
          color: provider.isDark() ? MyTheme.yellow : MyTheme.primarylight,
        ),
     Expanded(
       child: ListView.separated(
           itemBuilder:(context, index) {
             return SouraNameItem(name: SouraName[index],index: index,);
           },
           separatorBuilder:(context, index) {
    return   Divider(
        thickness: 3,
        color: provider.isDark() ? MyTheme.yellow : MyTheme.primarylight,
    );
    } ,
           itemCount: SouraName.length),
     )
     
     
      ],
    );
  }
}
