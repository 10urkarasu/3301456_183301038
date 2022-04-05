import 'package:flutter/material.dart';
import 'package:haber_gundem/pages/profil_pages/siebar_pages/hakk%C4%B1nda_page.dart';
import 'package:haber_gundem/pages/profil_pages/siebar_pages/hatabildir_page.dart';
import 'package:haber_gundem/pages/profil_pages/siebar_pages/profil_page.dart';
import 'package:haber_gundem/pages/profil_pages/siebar_pages/tema_page.dart';
import 'package:haber_gundem/pages/profil_pages/siebar_pages/versiyon_page.dart';

class ProfilPages extends StatefulWidget {
  const ProfilPages({Key? key}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPages> {
  int currentIndex=0;
  final screens=[
    ProfilPage(),
    TemaPage(),
    HakkindaPage(),
    VersiyonPage(),
    HataBildirPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:screens[currentIndex],
      drawer: Drawer(
        child: ListView(
          children:  [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'AYARLAR',
                  style: TextStyle(color: Colors.white,fontSize: 50),
                ),
              ),
            ),
            ButtonBar(
              overflowDirection: VerticalDirection.down,
              children: [
                  TextButton(
                    child: Text("Profil",style: TextStyle(fontSize: 20),),
                    onPressed: () {
                      setState(()=>currentIndex=0);
                    },
                  ),
                TextButton(
                  child: Text("Tema",style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    setState(()=>currentIndex=1);
                  },
                ),
                TextButton(
                  child: Text("Hakkında",style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    setState(()=>currentIndex=2);
                  },
                ),
                TextButton(
                  child: Text("Versiyon",style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    setState(()=>currentIndex=3);
                  },
                ),
                TextButton(
                  child: Text("Hata Bildir",style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    setState(()=>currentIndex=4);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
