import 'dart:io';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import '../../models/gundem_models/HaberlerModel.dart';
import 'package:http/http.dart';

class HaberlerApi{
   static Future<HaberlerModel> getHaberlerData(var context) async {
    final response = await get(
      Uri.parse('https://api.collectapi.com/news/getNews?country=tr&tag=general'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader: 'apikey 6mdM7DM6imLfWqJNuhNBJq:2adRZnPigD1taScttFK2sP',
      },
    );
    return HaberlerModel.fromJson(jsonDecode(response.body));

  }
}
