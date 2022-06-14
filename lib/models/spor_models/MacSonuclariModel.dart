import 'dart:convert';
/// result : [{"skor":"1-1","date":"2022-05-20T17:00:00+03:00","away":"Galatasaray","home":"FTA Antalyaspor"},{"skor":"2-0","date":"2022-05-20T17:00:00+03:00","away":"Çaykur Rizespor","home":"Gaziantep FK"},{"skor":"2-4","date":"2022-05-21T13:00:00+03:00","away":"Kasımpaşa","home":"Altay"},{"skor":"2-1","date":"2022-05-21T13:00:00+03:00","away":"Yukatel Kayserispor","home":"DG Sivasspor"},{"skor":"1-1","date":"2022-05-21T16:00:00+03:00","away":"İttifak Holding Konyaspor","home":"Beşiktaş"},{"skor":"0-5","date":"2022-05-21T16:00:00+03:00","away":"Fenerbahçe","home":"Öznur Kablo Yeni Malatyaspor"},{"skor":"0-1","date":"2022-05-22T13:00:00+03:00","away":"A. Alanyaspor","home":"VavaCars Fatih Karagümrük"},{"skor":"3-1","date":"2022-05-22T13:00:00+03:00","away":"Trabzonspor","home":"M.Başakşehir"},{"skor":"7-0","date":"2022-05-22T16:00:00+03:00","away":"Göztepe","home":"Adana Demirspor"},{"skor":"4-1","date":"2022-05-22T16:00:00+03:00","away":"GZT Giresunspor","home":"Atakaş Hatayspor"}]
/// success : true

MacSonuclariModel macSonuclariModelFromJson(String str) => MacSonuclariModel.fromJson(json.decode(str));
String macSonuclariModelToJson(MacSonuclariModel data) => json.encode(data.toJson());
class MacSonuclariModel {
  MacSonuclariModel({
      List<Result>? result, 
      bool? success,}){
    _result = result;
    _success = success;
}

  MacSonuclariModel.fromJson(dynamic json) {
    if (json['result'] != null) {
      _result = [];
      json['result'].forEach((v) {
        _result?.add(Result.fromJson(v));
      });
    }
    _success = json['success'];
  }
  List<Result>? _result;
  bool? _success;

  List<Result>? get result => _result;
  bool? get success => _success;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_result != null) {
      map['result'] = _result?.map((v) => v.toJson()).toList();
    }
    map['success'] = _success;
    return map;
  }

}

/// skor : "1-1"
/// date : "2022-05-20T17:00:00+03:00"
/// away : "Galatasaray"
/// home : "FTA Antalyaspor"

Result resultFromJson(String str) => Result.fromJson(json.decode(str));
String resultToJson(Result data) => json.encode(data.toJson());
class Result {
  Result({
      String? skor, 
      String? date, 
      String? away, 
      String? home,}){
    _skor = skor;
    _date = date;
    _away = away;
    _home = home;
}

  Result.fromJson(dynamic json) {
    _skor = json['skor'];
    _date = json['date'];
    _away = json['away'];
    _home = json['home'];
  }
  String? _skor;
  String? _date;
  String? _away;
  String? _home;

  String? get skor => _skor;
  String? get date => _date;
  String? get away => _away;
  String? get home => _home;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['skor'] = _skor;
    map['date'] = _date;
    map['away'] = _away;
    map['home'] = _home;
    return map;
  }

}