import 'package:flutter/material.dart';
import 'package:haber_gundem/pages/e%C4%9Flence_page.dart';
import 'package:haber_gundem/pages/gundem_pages/gundem_page.dart';
import 'package:haber_gundem/pages/profil_pages/profil_pages.dart';
import 'package:haber_gundem/pages/spor_pages/spor_page.dart';

class MyNavigateBar extends StatefulWidget {
  const MyNavigateBar({Key? key}) : super(key: key);

  @override
  _MyNavigateBarState createState() => _MyNavigateBarState();
}

class _MyNavigateBarState extends State<MyNavigateBar> {
  int currentIndex=0;
  final screens=[
    GundemPage(),
    SporPage(),
    EglencePage(),
    ProfilPages()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index)=>setState(()=>currentIndex=index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Gündem",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward_ios),
            label: "Spor",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Eğlence",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profil",
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
