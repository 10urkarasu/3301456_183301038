import 'package:flutter/material.dart';

class EglencePage extends StatefulWidget {
  const EglencePage({Key? key}) : super(key: key);

  @override
  _EglencePageState createState() => _EglencePageState();
}

class _EglencePageState extends State<EglencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eğlence"),
      ),
    );
  }
}
