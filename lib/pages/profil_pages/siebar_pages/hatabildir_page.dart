import 'package:flutter/material.dart';

class HataBildirPage extends StatefulWidget {
  const HataBildirPage({Key? key}) : super(key: key);

  @override
  _HataBildirPageState createState() => _HataBildirPageState();
}

class _HataBildirPageState extends State<HataBildirPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Icon(Icons.bug_report),
             const SizedBox(
               width: 200,
               height: 50,
               child: TextField(
                 decoration: InputDecoration(hintText: "Hata Mesajı"),
               ),
             ),
             OutlinedButton(onPressed:(){}, child: Text("Gönder"))
           ],
         ),
    );
  }
}
