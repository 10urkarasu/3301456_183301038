import 'package:flutter/material.dart';

import '../models/gundem_models/EkonomiModel.dart';

class Alert extends StatefulWidget {
  const Alert({Key? key, required this.widget, required this.index}) : super(key: key);

  @override
  _AlertState createState() => _AlertState();
  final EkonomiModel widget;
  final int index;
}

class _AlertState extends State<Alert> {
  var controllerOne=0.0;
  var controllerTwo=0.0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.widget.result![widget.index].code.toString()+"- TRY"),
      content: Container(
        width: 100,
        height: 100,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        controllerOne=(double.parse(value)*double.parse(widget.widget.result![widget.index].buying.toString())).toDouble();
                      });
                    },
                    decoration: InputDecoration(hintText: widget.widget.result![widget.index].code.toString()),
                  ),
                ),
                Text(controllerOne.toString())
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        controllerTwo=(double.parse(value)/double.parse(widget.widget.result![widget.index].buying.toString())).toDouble();
                      });
                    },
                    decoration: InputDecoration(hintText: "TRY"),
                  ),
                ),
                Text(controllerTwo.toString())
              ],
            ),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          color: Colors.red,
          textColor: Colors.white,
          child: Text('Tamam'),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
      ],
    );
  }
}
