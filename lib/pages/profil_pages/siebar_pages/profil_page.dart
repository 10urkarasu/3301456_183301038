import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blue,
            child: Icon(Icons.account_circle_outlined,color: Colors.white,size: 100),
          ),
          SizedBox(
            height: 50,
          ),
          Text("Kullanıcı Bilgileri"),
          SizedBox(
            height: 20,
          ),
          Text("İsim:"),
          SizedBox(
            height: 300,
          ),

        ],
      ),
    );
  }
}
