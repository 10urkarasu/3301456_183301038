import 'dart:convert';
/// result : [{"date":"24.09.2018","day":"Pazartesi","icon":"https://image.flaticon.com/icons/svg/143/143769.svg","description":"açık","status":"Clear","degree":"31","min":"11.6","max":"31","night":"11.6","humidity":"17"},{"date":"25.09.2018","day":"Salı","icon":"https://image.flaticon.com/icons/svg/143/143769.svg","description":"yağmurlu","status":"Rainy","degree":"24.14","min":"7.63","max":"25.82","night":"9.09","humidity":"35"},null]

HavaDurumuModel havaDurumuModelFromJson(String str) => HavaDurumuModel.fromJson(json.decode(str));
String havaDurumuModelToJson(HavaDurumuModel data) => json.encode(data.toJson());
class HavaDurumuModel {
  HavaDurumuModel({
      List<Result>? result,}){
    _result = result;
}

  HavaDurumuModel.fromJson(dynamic json) {
    if (json['result'] != null) {
      _result = [];
      json['result'].forEach((v) {
        _result?.add(Result.fromJson(v));
      });
    }
  }
  List<Result>? _result;

  List<Result>? get result => _result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_result != null) {
      map['result'] = _result?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// date : "24.09.2018"
/// day : "Pazartesi"
/// icon : "https://image.flaticon.com/icons/svg/143/143769.svg"
/// description : "açık"
/// status : "Clear"
/// degree : "31"
/// min : "11.6"
/// max : "31"
/// night : "11.6"
/// humidity : "17"

Result resultFromJson(String str) => Result.fromJson(json.decode(str));
String resultToJson(Result data) => json.encode(data.toJson());
class Result {
  Result({
      String? date, 
      String? day, 
      String? icon, 
      String? description, 
      String? status, 
      String? degree, 
      String? min, 
      String? max, 
      String? night, 
      String? humidity,}){
    _date = date;
    _day = day;
    _icon = icon;
    _description = description;
    _status = status;
    _degree = degree;
    _min = min;
    _max = max;
    _night = night;
    _humidity = humidity;
}

  Result.fromJson(dynamic json) {
    _date = json['date'];
    _day = json['day'];
    _icon = json['icon'];
    _description = json['description'];
    _status = json['status'];
    _degree = json['degree'];
    _min = json['min'];
    _max = json['max'];
    _night = json['night'];
    _humidity = json['humidity'];
  }
  String? _date;
  String? _day;
  String? _icon;
  String? _description;
  String? _status;
  String? _degree;
  String? _min;
  String? _max;
  String? _night;
  String? _humidity;

  String? get date => _date;
  String? get day => _day;
  String? get icon => _icon;
  String? get description => _description;
  String? get status => _status;
  String? get degree => _degree;
  String? get min => _min;
  String? get max => _max;
  String? get night => _night;
  String? get humidity => _humidity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['day'] = _day;
    map['icon'] = _icon;
    map['description'] = _description;
    map['status'] = _status;
    map['degree'] = _degree;
    map['min'] = _min;
    map['max'] = _max;
    map['night'] = _night;
    map['humidity'] = _humidity;
    return map;
  }

}