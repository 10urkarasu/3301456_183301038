import 'package:flutter/material.dart';
import 'package:haber_gundem/pages/gundem_pages/haberler_ekonomi_page.dart';
import 'package:haber_gundem/pages/gundem_pages/haberler_havadurumu_page.dart';
import 'package:haber_gundem/pages/gundem_pages/haberler_page.dart';
import 'package:haber_gundem/pages/gundem_pages/haberler_spor_page.dart';

class GundemPage extends StatefulWidget {
  const GundemPage({Key? key}) : super(key: key);

  @override
  _GundemPageState createState() => _GundemPageState();
}

class _GundemPageState extends State<GundemPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Gundem'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.fiber_new_sharp),
              ),
              Tab(
                icon: Icon(Icons.sports_football_outlined),
              ),
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.attach_money),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            HaberlerPage(),
            HaberlerSporPage(),
            HavaDurumuPage(),
            EkonomiPage(),
          ],
        ),
      ),
    );
  }
}
