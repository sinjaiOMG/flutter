import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sinjai_finaltherm1_py3_app/components/chat1.dart';
import 'package:sinjai_finaltherm1_py3_app/components/my.dart';
import 'package:sinjai_finaltherm1_py3_app/components/pro.dart';
import 'package:sinjai_finaltherm1_py3_app/components/sinjai_midterm.dart';
class Final extends StatefulWidget {
  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {

  TextEditingController ctrlUsername = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formkey,
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("SHOP NOW",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold ,
                        color: Colors.black54),
                  ),

                  Container(
                    height: 650,
                    child: tapss(),
                  )
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }}