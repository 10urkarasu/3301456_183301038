import 'package:flutter/material.dart';
import 'package:haber_gundem/models/spor_models/PuanDurumuModel.dart';

class PuanDurumuWidget extends StatefulWidget {
  const PuanDurumuWidget({Key? key, required this.widget, required this.index}) : super(key: key);

  @override
  _PuanDurumuWidgetState createState() => _PuanDurumuWidgetState();
  final PuanDurumuModel widget;
  final int index;
}

class _PuanDurumuWidgetState extends State<PuanDurumuWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.index%2==0?Colors.white:Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width:30,child: Text(widget.widget.result![widget.index].rank.toString())),
          SizedBox(
            width: 150,
            child: Text(widget.widget.result![widget.index].team.toString(), maxLines:1,
              overflow: TextOverflow.ellipsis,),
          ),
          SizedBox(width:30,child: Text(widget.widget.result![widget.index].play.toString())),
          SizedBox(width:30,child: Text(widget.widget.result![widget.index].win.toString())),
          SizedBox(width:30,child: Text(widget.widget.result![widget.index].draw.toString())),
          SizedBox(width:30,child: Text(widget.widget.result![widget.index].lose.toString())),
          SizedBox(width:30,child: Text(widget.widget.result![widget.index].rank.toString())),
        ],
      ),
    );
  }
}
