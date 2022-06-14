import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haber_gundem/services/auth_services/status_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:haber_gundem/widgets/puandurumu_widget.dart';

class YuklenenHaber extends StatefulWidget {
  const YuklenenHaber({Key? key}) : super(key: key);

  @override
  _YuklenenHaberState createState() => _YuklenenHaberState();
}

class _YuklenenHaberState extends State<YuklenenHaber> {
  StatusService _statusService = StatusService();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _statusService.getStatus(),
    builder: (context, snaphot) {
    return !snaphot.hasData
    ? CircularProgressIndicator()
        : ListView.builder(
    itemCount: snaphot.data!.docs.length,
    itemBuilder: (context, index) {
    DocumentSnapshot mypost = snaphot.data!.docs[index];
     return Text("");
    }
    );
});
  }
}

