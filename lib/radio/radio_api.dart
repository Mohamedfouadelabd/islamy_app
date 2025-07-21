

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islamy_project/Api/RadioSourceResponse.dart';
import 'package:islamy_project/Api/api_manger.dart';
import 'package:islamy_project/Provider/app_config_provider.dart';
import 'package:islamy_project/Theme/my_theme.dart';
import 'package:islamy_project/radio/radio_item.dart';
import 'package:provider/provider.dart';

class RadioApi extends StatelessWidget {
  var player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return FutureBuilder<RadioSourceResponse?>(
      future: ApiManger.getRadioResponse(),

      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: provider.isDark() ? MyTheme.yellow : MyTheme.primarylight,
            ),
          );
        } else if (snapshot.hasError) {
          return Column(
            children: [
              Text('wrong'),
              ElevatedButton(

                  onPressed: () {
                    ApiManger.getRadioResponse();
                  }, child: Text('Try Again')),
            ],

          );
        }
        if (snapshot.data!.radios == null) {
          Text('someting went wrong');
        }
        var radiolist = snapshot.data!.radios ?? [];

        return ListView.builder(

          itemCount: radiolist.length,
          physics: PageScrollPhysics(),

          scrollDirection: Axis.horizontal,
          itemBuilder:
              (context, index) {
            return RadioItem(radios: radiolist[index],player: player,);
          },


        );
      },);
  }
}
