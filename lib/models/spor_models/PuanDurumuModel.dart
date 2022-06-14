import 'dart:convert';
/// result : [{"rank":1,"draw":12,"lose":3,"win":23,"play":38,"point":81,"goalfor":69,"goalagainst":36,"goaldistance":33,"team":"Trabzonspor"},{"rank":2,"draw":10,"lose":7,"win":21,"play":38,"point":73,"goalfor":73,"goalagainst":38,"goaldistance":35,"team":"Fenerbahçe"},{"rank":3,"draw":8,"lose":10,"win":20,"play":38,"point":68,"goalfor":66,"goalagainst":45,"goaldistance":21,"team":"İttifak Holding Konyaspor"},{"rank":4,"draw":8,"lose":11,"win":19,"play":38,"point":65,"goalfor":56,"goalagainst":36,"goaldistance":20,"team":"M.Başakşehir"},{"rank":5,"draw":7,"lose":12,"win":19,"play":38,"point":64,"goalfor":67,"goalagainst":58,"goaldistance":9,"team":"A. Alanyaspor"},{"rank":6,"draw":14,"lose":9,"win":15,"play":38,"point":59,"goalfor":56,"goalagainst":48,"goaldistance":8,"team":"Beşiktaş"},{"rank":7,"draw":11,"lose":11,"win":16,"play":38,"point":59,"goalfor":54,"goalagainst":47,"goaldistance":7,"team":"FTA Antalyaspor"},{"rank":8,"draw":9,"lose":13,"win":16,"play":38,"point":57,"goalfor":47,"goalagainst":52,"goaldistance":-5,"team":"VavaCars Fatih Karagümrük"},{"rank":9,"draw":10,"lose":13,"win":15,"play":38,"point":55,"goalfor":60,"goalagainst":47,"goaldistance":13,"team":"Adana Demirspor"},{"rank":10,"draw":12,"lose":12,"win":14,"play":38,"point":54,"goalfor":52,"goalagainst":50,"goaldistance":2,"team":"DG Sivasspor"},{"rank":11,"draw":8,"lose":15,"win":15,"play":38,"point":53,"goalfor":67,"goalagainst":57,"goaldistance":10,"team":"Kasımpaşa"},{"rank":12,"draw":8,"lose":15,"win":15,"play":38,"point":53,"goalfor":56,"goalagainst":60,"goaldistance":-4,"team":"Atakaş Hatayspor"},{"rank":13,"draw":10,"lose":14,"win":14,"play":38,"point":52,"goalfor":51,"goalagainst":53,"goaldistance":-2,"team":"Galatasaray"},{"rank":14,"draw":11,"lose":15,"win":12,"play":38,"point":47,"goalfor":54,"goalagainst":61,"goaldistance":-7,"team":"Yukatel Kayserispor"},{"rank":15,"draw":10,"lose":16,"win":12,"play":38,"point":46,"goalfor":48,"goalagainst":56,"goaldistance":-8,"team":"Gaziantep FK"},{"rank":16,"draw":9,"lose":17,"win":12,"play":38,"point":45,"goalfor":41,"goalagainst":47,"goaldistance":-6,"team":"GZT Giresunspor"},{"rank":17,"draw":6,"lose":22,"win":10,"play":38,"point":36,"goalfor":44,"goalagainst":71,"goaldistance":-27,"team":"Çaykur Rizespor"},{"rank":18,"draw":7,"lose":22,"win":9,"play":38,"point":34,"goalfor":39,"goalagainst":57,"goaldistance":-18,"team":"Altay"},{"rank":19,"draw":7,"lose":24,"win":7,"play":38,"point":28,"goalfor":40,"goalagainst":77,"goaldistance":-37,"team":"Göztepe"},{"rank":20,"draw":5,"lose":28,"win":5,"play":38,"point":20,"goalfor":27,"goalagainst":71,"goaldistance":-44,"team":"Öznur Kablo Yeni Malatyaspor"}]
/// success : true

PuanDurumuModel puanDurumuModelFromJson(String str) => PuanDurumuModel.fromJson(json.decode(str));
String puanDurumuModelToJson(PuanDurumuModel data) => json.encode(data.toJson());
class PuanDurumuModel {
  PuanDurumuModel({
      List<Result>? result, 
      bool? success,}){
    _result = result;
    _success = success;
}

  PuanDurumuModel.fromJson(dynamic json) {
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
PuanDurumuModel copyWith({  List<Result>? result,
  bool? success,
}) => PuanDurumuModel(  result: result ?? _result,
  success: success ?? _success,
);
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
Result copyWith({  int? rank,
  int? draw,
  int? lose,
  int? win,
  int? play,
  int? point,
  int? goalfor,
  int? goalagainst,
  int? goaldistance,
  String? team,
}) => Result(  rank: rank ?? _rank,
  draw: draw ?? _draw,
  lose: lose ?? _lose,
  win: win ?? _win,
  play: play ?? _play,
  point: point ?? _point,
  goalfor: goalfor ?? _goalfor,
  goalagainst: goalagainst ?? _goalagainst,
  goaldistance: goaldistance ?? _goaldistance,
  team: team ?? _team,
);
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