import 'package:flutter/material.dart';
import 'package:haber_gundem/pages/spor_pages/spor_macsonuclari_page.dart';
import 'package:haber_gundem/pages/spor_pages/spor_puandurumu_page.dart';

class SporPage extends StatefulWidget {
  const SporPage({Key? key}) : super(key: key);

  @override
  _SporPageState createState() => _SporPageState();
}

class _SporPageState extends State<SporPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Futbol'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.sports_football_outlined),
              ),
              Tab(
                icon: Icon(Icons.sports_football_outlined),
              ),
              Tab(
                icon: Icon(Icons.sports_football_outlined),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
           PuanDurumu(),
            MacSonuclari(),
            PuanDurumu(),
          ],
        ),
      ),
    );
  }
}
