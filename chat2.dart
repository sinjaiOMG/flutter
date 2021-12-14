import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:sinjai_finaltherm1_py3_app/pages/product_detail.dart';
import 'package:sinjai_finaltherm1_py3_app/pages/product_detail.dart';
class Products2 extends StatefulWidget{
  @override
  _ProductsState createState () => _ProductsState();
}
class _ProductsState extends State<Products2> {
  var product_list =[
    {
      "name": "World Tour",
      "picture": "image/dvd2.jpg",
      "price": 100,
    },
    {
      "name": "World Tour",
      "picture": "image/dvd3.jpg",
      "price": 100,
    },
    {
      "name": "BTS MEMO",
      "picture": "image/dvd4.webp",
      "price": 90,
    },
    {
      "name": "World Tour",
      "picture": "image/DVD1.jpg",
      "price": 100,
    },
    {
      "name": "BTS FESTA",
      "picture": "image/dvd5.jpg",

      "price": 95,
    },
    {
      "name": "BTS SUMER",
      "picture": "image/dvd6.jpg",

      "price": 80,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
         // prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}
class Single_prod extends StatelessWidget{
  final prod_name;
  final prod_picture;
  //final prod_old_price;
  final prod_price;
  Single_prod({
    this.prod_name,
    this.prod_picture,
  //  this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (context)
                    => new ProductDetail(
                      product_detail_name: prod_name,
                     // product_detail_old_price: prod_old_price,
                      product_detail_new_price: prod_price,
                      product_detail_picture: prod_picture,
                    )
                )),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold,),
                      ),
                      subtitle: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w900),
                      ),

                    ),
                  ],
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}