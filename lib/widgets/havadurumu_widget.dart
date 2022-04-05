import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haber_gundem/models/gundem_models/HavaDurumuModel.dart';

class HavaDurumuWidget extends StatefulWidget {
  const HavaDurumuWidget({Key? key,required this.widget}) : super(key: key);

  @override
  _HavaDurumuWidgetState createState() => _HavaDurumuWidgetState();
  final HavaDurumuModel widget;
}


class _HavaDurumuWidgetState extends State<HavaDurumuWidget> {
  int secim=0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: (MediaQuery.of(context).size.width),
          height: (MediaQuery.of(context).size.height),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue,Colors.blue.shade900],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
          ),
          child: Row(
            children: [
              Container(
                height: (MediaQuery.of(context).size.height),
                width: (MediaQuery.of(context).size.width/4)*3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.widget.result![secim].day.toString(),style: TextStyle(color: Colors.white,fontSize: 40)),
                            Text(widget.widget.result![secim].date.toString(),style: TextStyle(color: Colors.white,fontSize: 15)),
                            SizedBox(height: 300,),
                            Text("Minimum Sıcaklık:"+widget.widget.result![secim].min.toString(),style: TextStyle(color: Colors.white,fontSize: 15),),
                            Text("Maximum Sıcaklık:"+widget.widget.result![secim].max.toString(),style: TextStyle(color: Colors.white,fontSize: 15),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(image: NetworkImage(widget.widget.result![secim].icon.toString()),height: 75,width: 75),
                            Text(widget.widget.result![secim].status.toString(),style: TextStyle(color: Colors.white,fontSize: 15),),
                            Text(widget.widget.result![secim].description.toString(),style: TextStyle(color: Colors.white,fontSize: 15),),
                            Text(widget.widget.result![secim].degree.toString()+"°",style: TextStyle(color: Colors.white,fontSize: 40),),
                          ],
                        )
                      ],
                    ),
                  ],

                ),
              ),
              Container(
                  height: (MediaQuery.of(context).size.height),
                  width: (MediaQuery.of(context).size.width)/4,
                  child: ListView.builder(
                      itemCount: widget.widget.result!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return button(widget.widget.result![index].day!,index);
                      }
                  )
              )
            ],
          ),
        )
    );
  }
  Widget button(String gun,int index) {
    return SizedBox(
      height: secim == index ? 100 : 75,
      child: OutlineButton(
        splashColor: Colors.white,
        borderSide: BorderSide(
            width: secim == index ? 1 : 0.5,
            color: Colors.white,
        ),
        onPressed: () {
          setState(()=>secim=index);
        },
        child: Text(gun,style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
