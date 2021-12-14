import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sinjai_finaltherm1_py3_app/components/Products.dart';
var bannerItems =["DVD","MICDROP","LAMP","DNA"];
var bannerImage =[
  "image/DVD1.jpg",
  "image/mic.jpg",
  "image/Lamp.jpg",
  "image/DNA.jpg"
];


class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var screenheight= MediaQuery.of(context).size.height;
    var screenwidth= MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: screenheight,
        width: screenwidth,
        child: SafeArea(
            child:SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.bubble_chart),color: Colors.black54, onPressed: (){}),
                        Text("BTS",style: TextStyle(fontSize: 25,color: Colors.black54),),
                        IconButton(icon: Icon(Icons.favorite_border),color: Colors.black54, onPressed: ()
                        {})
                      ],
                    ),
                  ),
                  Baner(),

                  Container(
                    height: 450.0,
                    child:

                    new ListView(
                      children: <Widget>[

                        new Padding(padding: const EdgeInsets.all(20.0),
                          child: new Text('HOT SALE'),
                        ),

                        Container(
                          height: 400.0,
                          child: Products(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ) ),
      ),

    );
  }
}
class Baner extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    var screenwidth= MediaQuery.of(context).size.width;
    PageController controller = PageController(viewportFraction:0.8,initialPage: 1);
    List<Widget> banners = new List<Widget>();
    for(int x =0;x<bannerItems.length;x++){
      var banerview = Padding(
        padding:EdgeInsets.all(2.0),
        child: Container(
          child: Stack(
            fit : StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  //  boxShadow: [
                  //    BoxShadow(
                    //      color: Colors.black38,
                     //     offset: Offset(5.0,5.0),
                     //     blurRadius: 5.0,
                     //     spreadRadius: 2.0
                    //  )
                   // ]
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(bannerImage[x], fit: BoxFit.cover,),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent,Colors.black12])
                ),

              ),
              Padding(padding: EdgeInsets.all(10.0),
                child:  Column(mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(bannerItems[x],style: TextStyle(fontSize: 25.0,color: Colors.white),),
                    Text("Out Now",style: TextStyle(fontSize: 12.0,color: Colors.white),)
                  ],),)
            ],
          ),
        ),);
      banners.add(banerview);
    }
    return Container(
      width: screenwidth,
      height: screenwidth*8/16,

      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }

}
class MyApp4 extends StatefulWidget {


  @override
  State<StatefulWidget> createState (){
    //return nextPage();
  }
}
