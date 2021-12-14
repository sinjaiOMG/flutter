import 'package:flutter/material.dart';
import 'package:sinjai_finaltherm1_py3_app/pages/product_detail.dart';
import 'package:sinjai_finaltherm1_py3_app/pages/product_detail.dart';
class Products extends StatefulWidget{
  @override
  _ProductsState createState () => _ProductsState();
}
class _ProductsState extends State<Products> {
  var product_list =[
    {
      "name": "lipstick set",
      "picture": "image/lip.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "chimmie",
      "picture": "image/lip2.jpg",
      "old_price": 30,
      "price": 20,
    },
    {
      "name": "framdation",
      "picture": "image/f.jpg",
      "old_price": 60,
      "price": 55,
    },
    {
      "name": "cution",
      "picture": "image/c1.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "eye sd",
      "picture": "image/sa.jpeg",
      "old_price": 120,
      "price": 100,
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
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}
class Single_prod extends StatelessWidget{
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
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
                      product_detail_old_price: prod_old_price,
                      product_detail_new_price: prod_price,
                      product_detail_picture: prod_picture,
                    )
                )),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\$$prod_price",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w900),
                  ),
                  subtitle: Text(
                    "\$$prod_old_price",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.lineThrough),
                  ),
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