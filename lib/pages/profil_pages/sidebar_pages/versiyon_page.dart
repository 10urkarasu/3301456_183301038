import 'package:flutter/material.dart';

class VersiyonPage extends StatefulWidget {
  const VersiyonPage({Key? key}) : super(key: key);

  @override
  _VersiyonPageState createState() => _VersiyonPageState();
}

class _VersiyonPageState extends State<VersiyonPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.arrow_circle_up
          ),
          Text("Uygulama versiyonu : 1.0.0")
        ],
      ),
    );
  }
}
