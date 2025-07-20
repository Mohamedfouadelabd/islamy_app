

import 'package:flutter/material.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:provider/provider.dart';
import 'package:audioplayers/audioplayers.dart';
import '../Api/RadioSourceResponse.dart';
import '../Provider/app_config_provider.dart';

class RadioItem extends StatelessWidget {
Radios radios;
AudioPlayer player;
RadioItem({required this.radios,required this.player});
  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<AppConfigProvider>(context);
    return  SizedBox(
     width: MediaQuery.of(context).size.width,
      child:Column(
        children: [
Text(radios.name??'',
style: Theme.of(context).textTheme.headline1!.copyWith(
  color: provider.isDark()?MyTheme.yellow:MyTheme.primarylight,
),

),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){
                player.play(UrlSource(radios.url!));


              }, icon: Icon(Icons.play_arrow,
                size: 60,
                color: provider.isDark()?MyTheme.yellow:MyTheme.primarylight,


              )),
              IconButton(onPressed: (){
                player.pause();
              }, icon: Icon(Icons.skip_next,
                size: 60,
                color: provider.isDark()?MyTheme.yellow:MyTheme.primarylight,


              )),
            ],
          ),

        ],
      )
    );
  }
}
