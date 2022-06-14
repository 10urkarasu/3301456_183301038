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
  List<Result> allNotes = <Result>[];
  void getNotes() async {
    var notesFuture = _databaseHelper.getAllHaber();
    await notesFuture.then((data) {
      setState(() {
        this.allNotes = data.cast<Result>();
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
            itemCount: allNotes.length,
            itemBuilder: (context, index) {
              return Text(allNotes[index].name.toString());
              })
    );
  }
}
