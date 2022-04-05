import 'package:flutter/material.dart';

import '../models/spor_models/MacSonuclariModel.dart';

class MacSonuclariWidget extends StatefulWidget {
  const MacSonuclariWidget({Key? key, required this.widget, required this.index}) : super(key: key);

  @override
  _MacSonuclariWidgetState createState() => _MacSonuclariWidgetState();
  final MacSonuclariModel widget;
  final int index;
}

class _MacSonuclariWidgetState extends State<MacSonuclariWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.index%2==0?Colors.green.shade900:Colors.green.shade800,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width:140,height:50,child: Text(widget.widget.result![widget.index].home.toString(),style: TextStyle(fontSize: 18,color: Colors.white),overflow: TextOverflow.ellipsis)),
          Column(
            children: [
              SizedBox(width:100,child: Text(widget.widget.result![widget.index].date.toString(),overflow: TextOverflow.ellipsis,)),
              Text(widget.widget.result![widget.index].skor.toString().length>5?"Oynanmadı":widget.widget.result![widget.index].skor.toString()),
            ],
          ),
          SizedBox(width:140,height: 50,child: Text(widget.widget.result![widget.index].away.toString(),style: TextStyle(fontSize: 18,color: Colors.white),overflow: TextOverflow.ellipsis,textAlign: TextAlign.right,)),
        ],
    )
    );
  }
}
