import 'package:flutter/material.dart';
import 'package:haber_gundem/models/gundem_models/EkonomiModel.dart';

class EkonomiWidget extends StatefulWidget {
  const EkonomiWidget({Key? key, required this.widget, required this.index}) : super(key: key);

  @override
  _EkonomiWidgetState createState() => _EkonomiWidgetState();
  final EkonomiModel widget;
  final int index;
}

class _EkonomiWidgetState extends State<EkonomiWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(

      ),
    );
  }
}
