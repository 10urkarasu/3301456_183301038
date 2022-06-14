import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:haber_gundem/services/auth_services/auth_service.dart';

import '../../models/gundem_models/HaberlerModel.dart';


class StatusService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //status eklemek için
  Future<Result> addStatus(Result result) async {
    var ref = _firestore.collection("Haber").doc(AuthService().userInfo().toString()).collection("Haberler");
    var documentRef = await ref.add(result.toJson());
    return Result(key: result.key,url: result.url,description: result.description,image: result.image,name: result.name,source: result.source,date: result.date);
  }

  //status göstermek için
  Stream<QuerySnapshot> getStatus() {
    var ref = _firestore.collection("Haber").doc(AuthService().userInfo().toString()).collection("Haberler").snapshots();
    return ref;
  }

  //status silmek için
  Future<void> removeStatus(String docId) {
    var ref = _firestore.collection("Haber").doc(AuthService().userInfo().toString()).collection("Haberler").doc(docId).delete();
    return ref;
  }
}