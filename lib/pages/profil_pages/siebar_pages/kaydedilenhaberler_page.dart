import 'package:flutter/material.dart';
import 'package:haber_gundem/models/gundem_models/HaberlerModel.dart';
import 'package:haber_gundem/widgets/haber_widget.dart';
import '../../../utils/dbHelper.dart';

class KaydedilenHaberler extends StatefulWidget {
  const KaydedilenHaberler({Key? key}) : super(key: key);

  @override
  _KaydedilenHaberlerState createState() => _KaydedilenHaberlerState();
}

class _KaydedilenHaberlerState extends State<KaydedilenHaberler> {
  DatabaseHelper _databaseHelper = DatabaseHelper();
  List<Result> haber = <Result>[];
  void getNotes() async {
    var haberFuture = _databaseHelper.getAllHaber();
    await haberFuture.then((data) {
      setState(() {
        this.haber = data.cast<Result>();
      });
    });
  }
  @override
  void initState() {
    super.initState();
    getNotes();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: haber.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(haber[index].image.toString()),
                title: Text(haber[index].name.toString()),
                subtitle: Text(haber[index].description.toString()),
                trailing: IconButton(
                  icon:  Icon(Icons.delete),
                  onPressed: (){
                    _databaseHelper.delete(index.toString());
                  },
                ),
              );
              })
    );
  }
}
