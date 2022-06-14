import 'dart:convert';
/// success : true
/// result : [{"name":"Dolar","code":"USD","buying":16.583,"buyingstr":"16,5830","selling":16.5904,"sellingstr":"16,5904","rate":1.07,"time":"11:34","date":"2022-06-06","datetime":"2022-06-06T08:34:00.000Z","calculated":0}]

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
/// buying : 16.583
/// buyingstr : "16,5830"
/// selling : 16.5904
/// sellingstr : "16,5904"
/// rate : 1.07
/// time : "11:34"
/// date : "2022-06-06"
/// datetime : "2022-06-06T08:34:00.000Z"
/// calculated : 0

Result resultFromJson(String str) => Result.fromJson(json.decode(str));
String resultToJson(Result data) => json.encode(data.toJson());
class Result {
  Result({
      String? name, 
      String? code, 
      double? buying, 
      String? buyingstr, 
      double? selling, 
      String? sellingstr, 
      double? rate, 
      String? time, 
      String? date, 
      String? datetime, 
      int? calculated,}){
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
  double? _buying;
  String? _buyingstr;
  double? _selling;
  String? _sellingstr;
  double? _rate;
  String? _time;
  String? _date;
  String? _datetime;
  int? _calculated;

  String? get name => _name;
  String? get code => _code;
  double? get buying => _buying;
  String? get buyingstr => _buyingstr;
  double? get selling => _selling;
  String? get sellingstr => _sellingstr;
  double? get rate => _rate;
  String? get time => _time;
  String? get date => _date;
  String? get datetime => _datetime;
  int? get calculated => _calculated;

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