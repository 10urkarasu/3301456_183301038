import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:haber_gundem/models/spor_models/PuanDurumuModel.dart';

class PuanDurumuApi{
  static Future<PuanDurumuModel> getPuanDurumuData(var context) async {
    final response = await DefaultAssetBundle.of(context).loadString("lib/JsonDatas/puandurumu.json");
    /*final response = await http.get(
      Uri.parse('https://api.collectapi.com/football/league?data.league=super-lig'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader: 'apikey 6mdM7DM6imLfWqJNuhNBJq:2adRZnPigD1taScttFK2sP',
      },
    );*/
    return PuanDurumuModel.fromJson(jsonDecode(response));
  }
}