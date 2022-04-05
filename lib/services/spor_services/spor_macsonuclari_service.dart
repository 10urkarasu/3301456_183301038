import 'dart:convert';
import 'package:flutter/cupertino.dart';
import '../../models/spor_models/MacSonuclariModel.dart';

class MacSonuclariApi{
  static Future<MacSonuclariModel> getMacSonuclariData(var context) async {
    final response = await DefaultAssetBundle.of(context).loadString("lib/JsonDatas/maçsonuçları.json");
    /*final response = await http.get(
      Uri.parse('https://api.collectapi.com/football/league?data.league=super-lig'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader: 'apikey 6mdM7DM6imLfWqJNuhNBJq:2adRZnPigD1taScttFK2sP',
      },
    );*/
    return MacSonuclariModel.fromJson(jsonDecode(response));
  }
}