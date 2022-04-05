import 'dart:convert';
/// result : [{"skor":"2-2","date":"2022-04-02T10:30:00+03:00","away":"DG Sivasspor","home":"GZT Giresunspor"},{"skor":"1-2","date":"2022-04-02T13:00:00+03:00","away":"FTA Antalyaspor","home":"Altay"},{"skor":"0-4","date":"2022-04-02T13:00:00+03:00","away":"Fenerbahçe","home":"Yukatel Kayserispor"},{"skor":"2-0","date":"2022-04-02T17:30:00+03:00","away":"VavaCars Fatih Karagümrük","home":"Galatasaray"},{"skor":"2-1","date":"2022-04-03T10:30:00+03:00","away":"Gaziantep FK","home":"Kasımpaşa"},{"skor":"2-1","date":"2022-04-03T13:00:00+03:00","away":"Çaykur Rizespor","home":"A. Alanyaspor"},{"skor":"3-0","date":"2022-04-03T13:00:00+03:00","away":"Göztepe","home":"İttifak Holding Konyaspor"},{"skor":"1-1","date":"2022-04-03T17:30:00+03:00","away":"Beşiktaş","home":"Trabzonspor"},{"skor":"undefined-undefined","date":"2022-04-04T17:30:00+03:00","away":"Adana Demirspor","home":"Atakaş Hatayspor"},{"skor":"undefined-undefined","date":"2022-04-04T17:30:00+03:00","away":"Öznur Kablo Yeni Malatyaspor","home":"M.Başakşehir"}]
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

/// skor : "2-2"
/// date : "2022-04-02T10:30:00+03:00"
/// away : "DG Sivasspor"
/// home : "GZT Giresunspor"

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