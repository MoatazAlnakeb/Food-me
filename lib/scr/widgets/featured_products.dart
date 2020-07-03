import 'package:flutter/material.dart';
import 'package:foodme/scr/models/product.dart';

import '../commons.dart';
import 'custum_text.dart';

class Featured extends StatelessWidget {
  List<Product>productList = [
    Product(name: "salad",price: 5.99,rating: 4.3,vendor: "VG food",wishlist: true,image: "salad.png"),
    Product(name: "salad",price: 5.99,rating: 4.3,vendor: "VG food",wishlist: false,image: "salad.png"),
    Product(name: "salad",price: 5.99,rating: 4.3,vendor: "VG food",wishlist: true,image: "salad.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productList.length,
          itemBuilder: (_,index){
            return Padding(padding: EdgeInsets.all(8),
                child: Container(
                  height: 240,
                  width: 200,
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: red[50],
                          offset: Offset(15,5),
                          blurRadius: 30,
                        )
                      ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/${productList[index].image}",height: 140,width: 140,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "${productList[index].name}",size: 20,),
                          ),
                          Padding(padding: EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: grey[300],
                                      offset: Offset(1,1),
                                      blurRadius: 4,
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child:productList[index].wishlist ?  Icon(Icons.favorite,size: 18,color: Colors.red,):Icon(Icons.favorite_border,size: 18,color: Colors.red,),
                              ),
                            ),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: CustomText(text: productList[index].rating.toString(),size: 18,),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Icon(Icons.star,color: Colors.red,size: 18,),
                              Icon(Icons.star,color: Colors.red,size: 18,),
                              Icon(Icons.star,color: Colors.red,size: 18,),
                              Icon(Icons.star,color: Colors.red,size: 18,),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: CustomText(text: "\$${productList[index].price}",),
                          )
                        ],
                      ),
                    ],
                  ),
                ));
          }),
    );
  }
}
