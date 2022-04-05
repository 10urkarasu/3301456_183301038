import 'dart:convert';
/// success : true
/// result : [{"key":"0","url":"https://www.cumhuriyet.com.tr/turkiye/depremde-hasar-goren-ibb-binasinin-yikim-ihalesi-yapilacak-1918654","description":"İzmir Büyükşehir Belediyesi depremde hasar gördüğü için boşaltılan ana hizmet binasının yıkım ihalesine Nisan’da çıkıyor. İki aşamalı ihalenin ikinci aşaması açık artırma usulü yapılacak ve yıkım karşılığında belediyeye en yüksek ödeme teklifi yapacak firma yıkımı üstlenecek.","image":"https://www.cumhuriyet.com.tr/Archive/2022/3/23/1918654/kapak_125321.jpg","name":"Deprem'de hasar gören İBB binasının yıkım ihalesi yapılacak","source":"Cumhuriyet","date":"2022-03-23T10:24:53.650Z"}]

HaberlerModel haberlerModelFromJson(String str) => HaberlerModel.fromJson(json.decode(str));
String haberlerModelToJson(HaberlerModel data) => json.encode(data.toJson());
class HaberlerModel {
  HaberlerModel({
      bool? success, 
      List<Result>? result,}){
    _success = success;
    _result = result;
}

  HaberlerModel.fromJson(dynamic json) {
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

/// key : "0"
/// url : "https://www.cumhuriyet.com.tr/turkiye/depremde-hasar-goren-ibb-binasinin-yikim-ihalesi-yapilacak-1918654"
/// description : "İzmir Büyükşehir Belediyesi depremde hasar gördüğü için boşaltılan ana hizmet binasının yıkım ihalesine Nisan’da çıkıyor. İki aşamalı ihalenin ikinci aşaması açık artırma usulü yapılacak ve yıkım karşılığında belediyeye en yüksek ödeme teklifi yapacak firma yıkımı üstlenecek."
/// image : "https://www.cumhuriyet.com.tr/Archive/2022/3/23/1918654/kapak_125321.jpg"
/// name : "Deprem'de hasar gören İBB binasının yıkım ihalesi yapılacak"
/// source : "Cumhuriyet"
/// date : "2022-03-23T10:24:53.650Z"

Result resultFromJson(String str) => Result.fromJson(json.decode(str));
String resultToJson(Result data) => json.encode(data.toJson());
class Result {
  Result({
      String? key, 
      String? url, 
      String? description, 
      String? image, 
      String? name, 
      String? source, 
      String? date,}){
    _key = key;
    _url = url;
    _description = description;
    _image = image;
    _name = name;
    _source = source;
    _date = date;
}

  Result.fromJson(dynamic json) {
    _key = json['key'];
    _url = json['url'];
    _description = json['description'];
    _image = json['image'];
    _name = json['name'];
    _source = json['source'];
    _date = json['date'];
  }
  String? _key;
  String? _url;
  String? _description;
  String? _image;
  String? _name;
  String? _source;
  String? _date;

  String? get key => _key;
  String? get url => _url;
  String? get description => _description;
  String? get image => _image;
  String? get name => _name;
  String? get source => _source;
  String? get date => _date;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = _key;
    map['url'] = _url;
    map['description'] = _description;
    map['image'] = _image;
    map['name'] = _name;
    map['source'] = _source;
    map['date'] = _date;
    return map;
  }

}