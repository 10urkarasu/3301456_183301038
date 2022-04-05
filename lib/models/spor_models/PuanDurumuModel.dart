import 'dart:convert';
/// succes : true
/// result : [{"rank":"1","draw":"8","lose":"2","win":"21","play":"31","point":"71","goalfor":"59","goalagainst":"27","goaldistance":"32","team":"Trabzonspor"}]

PuanDurumuModel puanDurumuModelFromJson(String str) => PuanDurumuModel.fromJson(json.decode(str));
String puanDurumuModelToJson(PuanDurumuModel data) => json.encode(data.toJson());
class PuanDurumuModel {
  PuanDurumuModel({
      bool? succes, 
      List<Result>? result,}){
    _succes = succes;
    _result = result;
}

  PuanDurumuModel.fromJson(dynamic json) {
    _succes = json['succes'];
    if (json['result'] != null) {
      _result = [];
      json['result'].forEach((v) {
        _result?.add(Result.fromJson(v));
      });
    }
  }
  bool? _succes;
  List<Result>? _result;

  bool? get succes => _succes;
  List<Result>? get result => _result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['succes'] = _succes;
    if (_result != null) {
      map['result'] = _result?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// rank : "1"
/// draw : "8"
/// lose : "2"
/// win : "21"
/// play : "31"
/// point : "71"
/// goalfor : "59"
/// goalagainst : "27"
/// goaldistance : "32"
/// team : "Trabzonspor"

Result resultFromJson(String str) => Result.fromJson(json.decode(str));
String resultToJson(Result data) => json.encode(data.toJson());
class Result {
  Result({
      String? rank, 
      String? draw, 
      String? lose, 
      String? win, 
      String? play, 
      String? point, 
      String? goalfor, 
      String? goalagainst, 
      String? goaldistance, 
      String? team,}){
    _rank = rank;
    _draw = draw;
    _lose = lose;
    _win = win;
    _play = play;
    _point = point;
    _goalfor = goalfor;
    _goalagainst = goalagainst;
    _goaldistance = goaldistance;
    _team = team;
}

  Result.fromJson(dynamic json) {
    _rank = json['rank'];
    _draw = json['draw'];
    _lose = json['lose'];
    _win = json['win'];
    _play = json['play'];
    _point = json['point'];
    _goalfor = json['goalfor'];
    _goalagainst = json['goalagainst'];
    _goaldistance = json['goaldistance'];
    _team = json['team'];
  }
  String? _rank;
  String? _draw;
  String? _lose;
  String? _win;
  String? _play;
  String? _point;
  String? _goalfor;
  String? _goalagainst;
  String? _goaldistance;
  String? _team;

  String? get rank => _rank;
  String? get draw => _draw;
  String? get lose => _lose;
  String? get win => _win;
  String? get play => _play;
  String? get point => _point;
  String? get goalfor => _goalfor;
  String? get goalagainst => _goalagainst;
  String? get goaldistance => _goaldistance;
  String? get team => _team;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rank'] = _rank;
    map['draw'] = _draw;
    map['lose'] = _lose;
    map['win'] = _win;
    map['play'] = _play;
    map['point'] = _point;
    map['goalfor'] = _goalfor;
    map['goalagainst'] = _goalagainst;
    map['goaldistance'] = _goaldistance;
    map['team'] = _team;
    return map;
  }

}