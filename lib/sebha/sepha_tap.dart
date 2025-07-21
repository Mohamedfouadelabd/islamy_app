import 'package:flutter/material.dart';
import 'package:islamy_project/Provider/app_config_provider.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:provider/provider.dart';

class SebhaTap extends StatefulWidget {
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int count = 1;

  double angle = 0;
  List<String> Taspehat = [
    'الحمد الله',
    'سبحان الله',
    'لا الله لا الله',
    'الله اكبر'
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Container(
              child: Center(
                child: provider.isDark()
                    ? Image.asset(
                        'assets/images/head_sebha_dark.png',
                      )
                    : Image.asset('assets/images/head_sebha_logo.png'),
              ),
            ),
            Transform.rotate(
              angle: angle,
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.09),
                child: Theme(
                  data: ThemeData(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent),
                  child: InkWell(
                    onTap: () {
                      count++;
                      angle += 20;

                      if (count == 33) {
                        count = 0;
                        index++;

                        if (index >= Taspehat.length) {
                          index = 0; // يرجع لأول اسم بعد آخر واحد
                        }
                      }

                      setState(() {});
                    },
                    child: Center(
                      child: provider.isDark()
                          ? Image.asset('assets/images/body_sebha_dark.png')
                          : Image.asset(
                              'assets/images/body_sebha_logo.png',
                            ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.09,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: provider.isDark() ? MyTheme.yellow : MyTheme.primarylight),
          child: Center(
            child: Text(
              count.toString(),
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: provider.isDark() ? MyTheme.Wihte : MyTheme.black),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: provider.isDark() ? MyTheme.yellow : MyTheme.primarylight),
          child: Center(
            child: Text(
              Taspehat[index],
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: provider.isDark() ? MyTheme.Wihte : MyTheme.black),
            ),
          ),
        ),
      ],
    );
  }
}
