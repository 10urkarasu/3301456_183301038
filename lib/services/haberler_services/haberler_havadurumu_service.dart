import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:haber_gundem/models/gundem_models/HavaDurumuModel.dart';

class HavaDurumuApi{
  static Future<HavaDurumuModel> getHaberlerData(var context) async {

    final response = await DefaultAssetBundle.of(context).loadString("lib/JsonDatas/havadurumu.json");
   /* final response = await http.get(
      Uri.parse('https://api.collectapi.com/weather/getWeather?data.lang=tr&data.city=ankara'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader: 'apikey 6mdM7DM6imLfWqJNuhNBJq:2adRZnPigD1taScttFK2sP',
      },
    );*/
    return HavaDurumuModel.fromJson(jsonDecode(response));
  }
}