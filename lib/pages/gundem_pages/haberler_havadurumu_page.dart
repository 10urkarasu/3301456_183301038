import 'package:flutter/material.dart';
import 'package:haber_gundem/models/gundem_models/HavaDurumuModel.dart';
import 'package:haber_gundem/services/haberler_services/haberler_havadurumu_service.dart';
import 'package:haber_gundem/widgets/havadurumu_widget.dart';

class HavaDurumuPage extends StatefulWidget {
  const HavaDurumuPage({Key? key}) : super(key: key);

  @override
  _HavaDurumuPageState createState() => _HavaDurumuPageState();
}

class _HavaDurumuPageState extends State<HavaDurumuPage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: FutureBuilder<HavaDurumuModel>(
          future: HavaDurumuApi.getHaberlerData(context),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Bir Hata Oluştu'),
              );
            } else if (snapshot.hasData) {
              return HavaDurumuWidget(widget: snapshot.data!);
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

