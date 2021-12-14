import 'package:flutter/material.dart';
import 'package:sinjai_finaltherm1_py3_app/components/sinjai_midterm.dart';

TextEditingController email = TextEditingController();
TextEditingController user = TextEditingController();
TextEditingController pass = TextEditingController();
final _formkey = GlobalKey<FormState>();
class My1 extends StatefulWidget {
  @override
  _My1State createState() => _My1State();
}

class _My1State extends State<My1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getListView(),
    );
  }
  Widget getListView(){
    var listView = ListView(
      children: <Widget>[
        Divider(),
        ListTile(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => MyApp4()),);},

          title: Text('Log in'),
          leading: Icon(Icons.person,color: Colors.deepPurple,),
        ),
        Divider(),
        ListTile(
          onTap: (){},

          title: Text('Name:  sinjai'),


        ),
        Divider(),
        ListTile(
          onTap: (){},

          title: Text('Tickle'),



        ),
        Divider(),
        ListTile(
          onTap: (){},

          title: Text('BTS SHOP ID: Km123'),

        ),

        Divider(),


      ],
    );
    return listView;
  }
}
class MyApp4 extends StatefulWidget {


  @override
  State<StatefulWidget> createState (){
    return nextPage();
  }
}

class nextPage extends State<MyApp4> {

  TextEditingController ctrlUsername = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("image/oo1.jpg"))
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(" BTS SHOP ",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold ,
                        color: Colors.white),
                  ),
                  SizedBox(height: 25.0,
                  ),
                  TextFormField(
                    validator : (String value){
                      if (value.isEmpty) return "ກະລຸນາປ້ອນຊື່";
                    },
                    controller: ctrlUsername,
                    decoration: InputDecoration(
                        errorStyle: TextStyle(fontSize: 20.0),
                        prefixIcon: Icon(Icons.account_circle),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.black38, fontSize: 15.0),
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none),
                  ),
                  SizedBox(height: 10.0,),
                  TextFormField(
                    validator : (String value){
                      if (value.isEmpty) return "ກະລຸນາປ້ອນລະຫັດ";
                    },
                    controller: ctrlPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        errorStyle: TextStyle(fontSize: 20.0),
                        prefixIcon: Icon(Icons.vpn_key),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black38, fontSize: 15.0),
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none),
                  ),
                  SizedBox(height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () => doLogin(),
                        color: Colors.deepPurpleAccent , child: Text("Login to app",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      ),
                      RaisedButton(
                        onPressed: (){

                        },
                        color: Colors.blueAccent ,
                        child: Text("New Redister",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  FlatButton(onPressed: (){}, child: Text(" Need Help?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                    
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  doLogin(){

    if(_formkey.currentState.validate()){
      String username = ctrlUsername.text;
      String password = ctrlPassword.text;
      if (username == 'User' && password == 'User123'){
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => taps()));
      } else {
        print("Invalid username/password");
      }

    }
  }
}
class Myapp1 extends StatefulWidget {
  @override
  _Myapp1State createState() => _Myapp1State();
}

class _Myapp1State extends State<Myapp1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(" don't have Order"),
    );
  }
}
