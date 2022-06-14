import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import '../../models/gundem_models/EkonomiModel.dart';
import 'package:http/http.dart';

class EkonomiApi{
  static Future<EkonomiModel> getEkonomiData(var context) async {
    final response = await get(
      Uri.parse('https://api.collectapi.com/economy/allCurrency'),
      headers: {
        HttpHeaders.authorizationHeader: 'apikey 6mdM7DM6imLfWqJNuhNBJq:2adRZnPigD1taScttFK2sP',
      },

    );
    return EkonomiModel.fromJson(jsonDecode(response.body));
  }
}