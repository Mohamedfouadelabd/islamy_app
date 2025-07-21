import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:islamy_project/Api/RadioSourceResponse.dart';
import 'package:islamy_project/Api/api_const.dart';

class ApiManger{
/*
https://mp3quran.net/api/v3/radios?language=ar
 */
static Future<RadioSourceResponse?> getRadioResponse()async{
  Uri url =Uri.https(ApiConst.baseurl,ApiConst.radioQuran,{
    'language': 'ar'


  });
try{
  var response=await http.get(url);
  var bodyString=response.body;
  var json=jsonDecode(bodyString);
  return RadioSourceResponse.fromJson(json);
}catch(e){
  throw e;
}

}

}