import 'package:flutter/material.dart';
import 'package:haber_gundem/services/spor_services/spor_macsonuclari_service.dart';
import 'package:haber_gundem/widgets/ma%C3%A7sonu%C3%A7lari_widget.dart';
import '../../models/spor_models/MacSonuclariModel.dart';

class MacSonuclari extends StatefulWidget {
  const MacSonuclari({Key? key}) : super(key: key);

  @override
  _MacSonuclariState createState() => _MacSonuclariState();
}

class _MacSonuclariState extends State<MacSonuclari> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder<MacSonuclariModel>(
          future: MacSonuclariApi.getMacSonuclariData(context),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Bir Hata Oluştu'),
              );
            } else if (snapshot.hasData) {
              return ListView.builder(
                  itemCount:snapshot.data!.result!.length,
                  itemBuilder: (context,index){
                    return MacSonuclariWidget(widget: snapshot.data!, index: index);
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
