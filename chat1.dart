import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinjai_finaltherm1_py3_app/components/CHAT.dart';
import 'package:sinjai_finaltherm1_py3_app/components/chat2.dart';
import 'package:sinjai_finaltherm1_py3_app/components/chat3.dart';
import 'package:sinjai_finaltherm1_py3_app/components/chat4.dart';
import 'package:sinjai_finaltherm1_py3_app/components/chat5.dart';
import 'package:sinjai_finaltherm1_py3_app/components/pro.dart';




class tapss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(child:  Text("DVD",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54),)),
                  Tab(child: Text("ALBUM",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54),)),
                  Tab(child:Text("BT21",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54)),),
                  Tab(child:Text("BTS",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54),),),


                ],
              ),
              backgroundColor: Colors.white,
              title: Center(
                heightFactor: 7.0,

              ),

            ),
            body: TabBarView(

              children: <Widget>[
                Container(
                  child: Products2(),

                ),
                Container(
                  child: Products3(),

                ),
                Container(
                   child:Products4 (),

                ),
                Container(
                   child: Products5(),


                ),
              ],

            )
        ),

      ),
    );
  }
}