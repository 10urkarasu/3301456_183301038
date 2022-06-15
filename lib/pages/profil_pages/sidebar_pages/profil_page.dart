import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../services/auth_services/auth_service.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blue,
            child: Icon(Icons.account_circle_outlined,color: Colors.white,size: 100),
          ),
          Text(_authService.userInfoEmail()),
          InkWell(
            onTap: (){
              _authService.signOut();
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  //color: colorPrimaryShade,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                    child: Text(
                      "Çıkış yap",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    )),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
