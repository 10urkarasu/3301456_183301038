import 'package:flutter/material.dart';
import 'package:haber_gundem/models/gundem_models/HaberlerModel.dart';
import 'package:haber_gundem/widgets/haber_widget.dart';
import 'package:haber_gundem/services/haberler_services/haberler_service.dart';

class HaberlerPage extends StatefulWidget {
  const HaberlerPage({Key? key}) : super(key: key);

  @override
  _HaberlerPageState createState() => _HaberlerPageState();
}

class _HaberlerPageState extends State<HaberlerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<HaberlerModel>(
        future: HaberlerApi.getHaberlerData(context),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Bir Hata Oluştu'),
            );
          } else if (snapshot.hasData) {
            return ListView.builder(
                itemCount:snapshot.data!.result!.length,
                itemBuilder: (context,index){
                  return HaberWidget(widget:snapshot.data!,index: index,);
                }
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )
    );
  }
}
