import 'dart:io';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import '../../models/spor_models/MacSonuclariModel.dart';
import 'package:http/http.dart';

class MacSonuclariApi{
  static Future<MacSonuclariModel> getMacSonuclariData(var context) async {
    final response = await get(
      Uri.parse('https://api.collectapi.com/football/results?data.league=super-lig'),
      headers: {
        HttpHeaders.authorizationHeader: 'apikey 6mdM7DM6imLfWqJNuhNBJq:2adRZnPigD1taScttFK2sP',
      },
    );
    return MacSonuclariModel.fromJson(jsonDecode(response.body));
  }
}