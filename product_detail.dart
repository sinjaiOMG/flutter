import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetail({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: new AppBar(
       elevation: 0.1,
       backgroundColor: Colors.white,

       actions: <Widget>[
         new IconButton(
             icon: Icon(
               Icons.shopping_cart,
               color: Colors.white,
             ),
             onPressed: (){}),
       ],
     ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
              child: GridTile(
                  child: Container(
                    color:  Colors.white,
                    child: Image.asset(widget.product_detail_picture),
                  ),
                footer: new Container(
                  color: Colors.white70,
                    child: ListTile(
                      leading: new Text(widget.product_detail_name,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                      title: new Row(
                        children: <Widget>[
                          Expanded(
                              child: new Text("\$${widget.product_detail_old_price}",
                              style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                          ),
                          Expanded(
                              child: new Text("\$${widget.product_detail_new_price}",
                              style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)
                          ),
                        ],
                      ),
                    ),
                ),
              ),
          ),


          Row(
            children: <Widget>[

              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                    return new AlertDialog(
                      title: new Text("Size"),
                      content: new Text("Choose the size: S,M,L "),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),)
                      ],
                    );
                      });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Size")),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              Expanded(
                  child: MaterialButton(onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Colors"),
                            content: new Text("Choose a Color : "),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("close"),)
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("color")),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                  ),
              ),

              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Quantity"),
                          content: new Text("Choose the quantity"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),)
                          ],
                        );
                      });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Qty")),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),


          Row(
            children: <Widget>[

              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.black38,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy now")
                ),
              ),

              new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.black38, onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.black38, onPressed: (){}),
            ],
          ),
        ],
      ),
    );
  }
}
