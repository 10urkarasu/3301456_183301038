import 'package:flutter/material.dart';

class HakkindaPage extends StatefulWidget {
  const HakkindaPage({Key? key}) : super(key: key);

  @override
  _HakkindaPageState createState() => _HakkindaPageState();
}

class _HakkindaPageState extends State<HakkindaPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(image: AssetImage("lib/assets/selcukLogo.png"),height: 150,width: 150,),
          SizedBox(height: 50,),
          Text(
            "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir Çınar taraından yürütülen 3301456 kodlu ders kapsamında 183301038 numaralı Onur KARASU tarafından 06 Nisan 2021 günü yapılmıştır"
          ),
        ],
      ),
    );
  }
}
