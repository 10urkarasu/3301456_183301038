import 'dart:convert';
/// result : [{"rank":1,"draw":12,"lose":3,"win":23,"play":38,"point":81,"goalfor":69,"goalagainst":36,"goaldistance":33,"team":"Trabzonspor"},{"rank":2,"draw":10,"lose":7,"win":21,"play":38,"point":73,"goalfor":73,"goalagainst":38,"goaldistance":35,"team":"Fenerbahçe"},{"rank":3,"draw":8,"lose":10,"win":20,"play":38,"point":68,"goalfor":66,"goalagainst":45,"goaldistance":21,"team":"İttifak Holding Konyaspor"},{"rank":4,"draw":8,"lose":11,"win":19,"play":38,"point":65,"goalfor":56,"goalagainst":36,"goaldistance":20,"team":"M.Başakşehir"},{"rank":5,"draw":7,"lose":12,"win":19,"play":38,"point":64,"goalfor":67,"goalagainst":58,"goaldistance":9,"team":"A. Alanyaspor"},{"rank":6,"draw":14,"lose":9,"win":15,"play":38,"point":59,"goalfor":56,"goalagainst":48,"goaldistance":8,"team":"Beşiktaş"}]

PuanDurumuModel puanDurumuModelFromJson(String str) => PuanDurumuModel.fromJson(json.decode(str));
String puanDurumuModelToJson(PuanDurumuModel data) => json.encode(data.toJson());
class PuanDurumuModel {
  PuanDurumuModel({
      List<Result>? result,}){
    _result = result;
}

  PuanDurumuModel.fromJson(dynamic json) {
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

/// rank : 1
/// draw : 12
/// lose : 3
/// win : 23
/// play : 38
/// point : 81
/// goalfor : 69
/// goalagainst : 36
/// goaldistance : 33
/// team : "Trabzonspor"

Result resultFromJson(String str) => Result.fromJson(json.decode(str));
String resultToJson(Result data) => json.encode(data.toJson());
class Result {
  Result({
      int? rank, 
      int? draw, 
      int? lose, 
      int? win, 
      int? play, 
      int? point, 
      int? goalfor, 
      int? goalagainst, 
      int? goaldistance, 
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
  int? _rank;
  int? _draw;
  int? _lose;
  int? _win;
  int? _play;
  int? _point;
  int? _goalfor;
  int? _goalagainst;
  int? _goaldistance;
  String? _team;

  int? get rank => _rank;
  int? get draw => _draw;
  int? get lose => _lose;
  int? get win => _win;
  int? get play => _play;
  int? get point => _point;
  int? get goalfor => _goalfor;
  int? get goalagainst => _goalagainst;
  int? get goaldistance => _goaldistance;
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