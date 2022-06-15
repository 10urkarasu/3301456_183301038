import 'package:flutter/material.dart';

class TemaPage extends StatefulWidget {
  const TemaPage({Key? key}) : super(key: key);

  @override
  _TemaPageState createState() => _TemaPageState();
}

class _TemaPageState extends State<TemaPage> {
  bool tema=false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Aydınlık Mod"),
          Switch(
            value: tema,
            onChanged:(value) {
              setState(() {
                tema = value;
                print(tema);
              });
            },
          ),
          const Text("Karanlık Mod"),
        ],
      ),
    );
  }
}
