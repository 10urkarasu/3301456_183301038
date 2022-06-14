import 'dart:io';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:haber_gundem/models/spor_models/PuanDurumuModel.dart';
import 'package:http/http.dart';

class PuanDurumuApi{
  static Future<PuanDurumuModel> getPuanDurumuData(var context) async {
    final response = await get(
      Uri.parse('https://api.collectapi.com/football/league?data.league=super-lig'),
      headers: {
        HttpHeaders.authorizationHeader: 'apikey 6mdM7DM6imLfWqJNuhNBJq:2adRZnPigD1taScttFK2sP',
      },
    );
    print(response.body);
    return PuanDurumuModel.fromJson(jsonDecode(response.body));
  }
}