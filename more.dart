import 'package:flutter/material.dart';
import 'package:sinjai_finaltherm1_py3_app/components/sinjai_midterm.dart';


class more extends StatefulWidget {
  @override
  _moreState createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getListView(),
    );
  }
  Widget getListView(){
    var listView = ListView(
      children: <Widget>[
        ListTile(
          onTap: (){},

          title: Text('                MORE' ,style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold ,
              color: Colors.black54),),


        ),
        Divider(),
        ListTile(
          onTap: (){},

          title: Text('Setting' ,style: TextStyle(fontSize: 15,color: Colors.black38),),


        ),
        ListTile(
          onTap: (){},

          title: Text('Artist And Shop' ,),
          trailing: Text('BTS.GLOBAL' ,style: TextStyle(color: Colors.blue),),

        ),
        Divider(),
        ListTile(
          onTap: (){},

          title: Text('Language'),
          trailing: Text('English' ,style: TextStyle(color: Colors.blue),),

        ),
        Divider(),
        ListTile(
          onTap: (){},

          title: Text('Currency'),

          trailing: Text('USD' ,style: TextStyle(color: Colors.blue),),


        ),
        Divider(),
        ListTile(
          onTap: (){},

          title: Text('Notification'),
          trailing: Text('Change' ,style: TextStyle(color: Colors.blue),),


        ),

        Divider(),


        ListTile(
          onTap: (){},

          title: Text('Support' ,style: TextStyle(fontSize: 15,color: Colors.black38),),


        ),
        ListTile(
          onTap: (){},

          title: Text('Customer Service' ,),


        ),
        Divider(),
        ListTile(
          onTap: (){},

          title: Text('Announcement'),
          trailing: Icon(Icons.arrow_forward_ios)

        ),
        Divider(),
        ListTile(
          onTap: (){},

          title: Text('Currency'),

          trailing:Icon(Icons.arrow_forward_ios)


        ),
        Divider(),
        ListTile(
          onTap: (){},

          title: Text('About BTS SHOP' ,style: TextStyle(fontSize: 15,color: Colors.black38),),


        ),
        ListTile(
          onTap: (){},

          title: Text('Term and Policy' ,),
            trailing: Icon(Icons.arrow_forward_ios)

        ),
        Divider(),
        ListTile(
            onTap: (){},

            title: Text('App Version v1.4.3'),


        ),
      ],
    );
    return listView;
  }
}

class Myapp2 extends StatefulWidget {
  @override
  _Myapp2State createState() => _Myapp2State();
}

class _Myapp2State extends State<Myapp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),


            child:Container(
              child: Center(
                child:Text("no return or exchanges",
                  style: TextStyle(
                      fontSize: 30.0,

                      fontWeight: FontWeight.bold ,
                      color: Colors.black38),
                ),),


            ),





          )
        ],
      ) ,
    );
  }
}
