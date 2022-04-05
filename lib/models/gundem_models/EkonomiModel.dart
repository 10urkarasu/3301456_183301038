import 'dart:convert';
/// success : true
/// result : [{"name":"Dolar","code":"USD","buying":"14.6779","buyingstr":"14,6779","selling":"14.6941","sellingstr":"14,6941","rate":"0.07","time":"08:19","date":"2022-04-04","datetime":"2022-04-04T05:19:00.000Z","calculated":"0"},{"name":"Euro","code":"EUR","buying":"16.223","buyingstr":"16,2230","selling":"16.2446","sellingstr":"16,2446","rate":"0.16","time":"08:19","date":"2022-04-04","datetime":"2022-04-04T05:19:00.000Z","calculated":"0"},{"name":"İngiliz Sterlini","code":"GBP","buying":"19.2603","buyingstr":"19,2603","selling":"19.2959","sellingstr":"19,2959","rate":"0.12","time":"08:19","date":"2022-04-04","datetime":"2022-04-04T05:19:00.000Z","calculated":"0"},{"name":"İsviçre Frangı","code":"CHF","buying":"15.8451","buyingstr":"15,8451","selling":"15.8651","sellingstr":"15,8651","rate":"0.01","time":"08:18","date":"2022-04-04","datetime":"2022-04-04T05:18:00.000Z","calculated":"0"},{"name":"Kanada Doları","code":"CAD","buying":"11.7357","buyingstr":"11,7357","selling":"11.744","sellingstr":"11,7440","rate":"0.13","time":"08:19","date":"2022-04-04","datetime":"2022-04-04T05:19:00.000Z","calculated":"0"},{"name":"Rus Rublesi","code":"RUB","buying":"0.1748","buyingstr":"0,1748","selling":"0.175","sellingstr":"0,1750","rate":"2","time":"08:19","date":"2022-04-04","datetime":"2022-04-04T05:19:00.000Z","calculated":"0"},{"name":"100 Japon Yeni","code":"JPY","buying":"11.9683","buyingstr":"11,9683","selling":"11.9844","sellingstr":"11,9844","rate":",-0.03","time":"08:19","date":"2022-04-04","datetime":"2022-04-04T05:19:00.000Z","calculated":"0"},{"name":"Kuveyt Dinarı","code":"KWD","buying":"48.3223","buyingstr":"48,3223","selling":"48.2169","sellingstr":"48,2169","rate":"-0.23","time":"08:19","date":"2022-04-04","datetime":"2022-04-04T05:19:00.000Z","calculated":"0"}]

EkonomiModel ekonomiModelFromJson(String str) => EkonomiModel.fromJson(json.decode(str));
String ekonomiModelToJson(EkonomiModel data) => json.encode(data.toJson());
class EkonomiModel {
  EkonomiModel({
      bool? success, 
      List<Result>? result,}){
    _success = success;
    _result = result;
}

  EkonomiModel.fromJson(dynamic json) {
    _success = json['success'];
    if (json['result'] != null) {
      _result = [];
      json['result'].forEach((v) {
        _result?.add(Result.fromJson(v));
      });
    }
  }
  bool? _success;
  List<Result>? _result;

  bool? get success => _success;
  List<Result>? get result => _result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_result != null) {
      map['result'] = _result?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// name : "Dolar"
/// code : "USD"
/// buying : "14.6779"
/// buyingstr : "14,6779"
/// selling : "14.6941"
/// sellingstr : "14,6941"
/// rate : "0.07"
/// time : "08:19"
/// date : "2022-04-04"
/// datetime : "2022-04-04T05:19:00.000Z"
/// calculated : "0"

Result resultFromJson(String str) => Result.fromJson(json.decode(str));
String resultToJson(Result data) => json.encode(data.toJson());
class Result {
  Result({
      String? name, 
      String? code, 
      String? buying, 
      String? buyingstr, 
      String? selling, 
      String? sellingstr, 
      String? rate, 
      String? time, 
      String? date, 
      String? datetime, 
      String? calculated,}){
    _name = name;
    _code = code;
    _buying = buying;
    _buyingstr = buyingstr;
    _selling = selling;
    _sellingstr = sellingstr;
    _rate = rate;
    _time = time;
    _date = date;
    _datetime = datetime;
    _calculated = calculated;
}

  Result.fromJson(dynamic json) {
    _name = json['name'];
    _code = json['code'];
    _buying = json['buying'];
    _buyingstr = json['buyingstr'];
    _selling = json['selling'];
    _sellingstr = json['sellingstr'];
    _rate = json['rate'];
    _time = json['time'];
    _date = json['date'];
    _datetime = json['datetime'];
    _calculated = json['calculated'];
  }
  String? _name;
  String? _code;
  String? _buying;
  String? _buyingstr;
  String? _selling;
  String? _sellingstr;
  String? _rate;
  String? _time;
  String? _date;
  String? _datetime;
  String? _calculated;

  String? get name => _name;
  String? get code => _code;
  String? get buying => _buying;
  String? get buyingstr => _buyingstr;
  String? get selling => _selling;
  String? get sellingstr => _sellingstr;
  String? get rate => _rate;
  String? get time => _time;
  String? get date => _date;
  String? get datetime => _datetime;
  String? get calculated => _calculated;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['code'] = _code;
    map['buying'] = _buying;
    map['buyingstr'] = _buyingstr;
    map['selling'] = _selling;
    map['sellingstr'] = _sellingstr;
    map['rate'] = _rate;
    map['time'] = _time;
    map['date'] = _date;
    map['datetime'] = _datetime;
    map['calculated'] = _calculated;
    return map;
  }

}