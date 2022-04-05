import 'package:flutter/material.dart';
import 'package:haber_gundem/models/gundem_models/EkonomiModel.dart';

import '../../services/haberler_services/haberler_ekonomi_service.dart';
import '../../widgets/ekonomi_alert_widget.dart';

class EkonomiPage extends StatefulWidget {
  const EkonomiPage({Key? key}) : super(key: key);

  @override
  _EkonomiPageState createState() => _EkonomiPageState();
}

class _EkonomiPageState extends State<EkonomiPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder<EkonomiModel>(
          future: EkonomiApi.getEkonomiData(context),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Bir Hata Oluştu'),
              );
            } else if (snapshot.hasData) {
              return ListView.builder(
                  itemCount:snapshot.data!.result!.length,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        showDialog(
                              context: context,
                              builder: (context) {
                                return Alert(widget: snapshot.data!, index: index);
                              });
                      },
                      child: ListTile(
                        tileColor: index%2==0?Colors.blueGrey.shade100:Colors.blueGrey.shade200,
                        leading: Text(snapshot.data!.result![index].code.toString(),style: TextStyle(color: Colors.black,fontSize: 20)),
                        title: Text(snapshot.data!.result![index].buying.toString(),style: TextStyle(color: Colors.black)),
                        subtitle: Text(snapshot.data!.result![index].name.toString(),style: TextStyle(color: Colors.black)),
                      ),
                    );
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