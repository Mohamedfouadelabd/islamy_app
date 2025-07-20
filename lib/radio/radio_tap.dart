
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islamy_project/Provider/app_config_provider.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:islamy_project/radio/radio_api.dart';

import 'package:provider/provider.dart';

class RadioTap extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
   var provider= Provider.of<AppConfigProvider>(context);
    return Column(
      children: [
        Center(child: Image.asset('assets/images/radio_image.png')),
SizedBox(
  height: MediaQuery.of(context).size.height*0.05,
),

        Text('إذاعة القرآن الكريم',
style: Theme.of(context).textTheme.headline1!.copyWith(
  color: provider.isDark()?MyTheme.Wihte:MyTheme.black


),

),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.1,
        ),
Expanded(child: RadioApi()),
       

      ],
    );
  }
}
