import 'package:flutter/material.dart';
import 'package:foodme/scr/models/category.dart';
import 'package:foodme/scr/widgets/categories.dart';
import 'package:foodme/scr/widgets/custum_text.dart';
import 'package:foodme/scr/widgets/featured_products.dart';

import '../commons.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('what do you want to eat?',style: TextStyle(fontSize: 20),),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.notifications_none),onPressed: (){},),
                    Positioned(
                      top: 12,
                      right: 13,
                      child: Container(
                        height: 10,width: 10,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    )
                  ],
    )
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey[300],
                      offset: Offset(1,1),
                      blurRadius: 4,
                    )
                  ]
                ),
                child: ListTile(
                  title: TextField(
                    decoration:InputDecoration(hintText: 'Find Food and Resturents',
                    border: InputBorder.none),
                  ),
                  trailing: Icon(Icons.filter_list,color: red,),
                  leading: Icon(Icons.search,color: red,),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Categories(),

           Padding(
              padding: const EdgeInsets.only(left: 8.0,bottom: 8),
              child: CustomText(text: "Featured",size: 20,color: grey,),
            ),

            Featured(),

            Padding(
              padding: const EdgeInsets.only(left: 8.0,bottom: 8),
              child: CustomText(text: "Popular",size: 20,color: grey,),
            ),

           Stack(
             children: <Widget>[
               Padding(padding: EdgeInsets.all(8),child:  ClipRRect(
                   borderRadius: BorderRadius.circular(20),
                   child: Image.asset("images/pizza.png")),),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[

                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: red,
                             boxShadow: [
                               BoxShadow(
                                 color: grey[300],
                                 //offset: Offset(1,1),
                                 blurRadius: 4,
                               )
                             ]
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(4.0),
                           child:Icon(Icons.favorite,size: 18,color: Colors.white,),
                         ),
                       ),
                     ),


                   Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Container(
                       decoration: BoxDecoration(
                         color: white,
                         borderRadius: BorderRadius.circular(10)
                       ),
                       width: 60,
                       height: 30,
                       child:Row(
                       children: <Widget>[
                         Icon(Icons.star,color: Colors.amber,),
                         CustomText(text: "4.5",)
                       ],
                       ),
                     ),
                   ),

                   ],

                 ),

               ),
               Positioned.fill(child: Align(
                 alignment: Alignment.bottomCenter,
                 child: Padding(
                   padding: const EdgeInsets.only(bottom:8.0),
                   child: Container(
                     height: 90,
                     width: 385,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                       gradient:LinearGradient(
                           begin: Alignment.bottomCenter,
                           end: Alignment.topCenter,
                           colors:[
                             Colors.black.withOpacity(0.7),
                             Colors.black.withOpacity(0.6),
                             Colors.black.withOpacity(0.5),
                             Colors.black.withOpacity(0.4),
                             Colors.black.withOpacity(0.3),
                             Colors.black.withOpacity(0.1),
                             Colors.black.withOpacity(0.05),
                           ])
                     ),
                   ),
                 ),
               ),
               ),

               Positioned.fill(
                   child:Align(
                       alignment: Alignment.bottomCenter,
                     child: Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.only(left:8.0,bottom: 8),
                             child: RichText(
                               text: TextSpan(
                                 children: [
                                   TextSpan(text: "Pizza\n",style: TextStyle(fontSize: 20)),
                                   TextSpan(text: "by: ",style: TextStyle(fontSize: 16)),
                                   TextSpan(text: "Pizza hut",style: TextStyle(fontSize: 16)),
                                 ]
                               ),
                             ),
                           ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(text:
                            TextSpan(text: "\$12.99\n",style: TextStyle(fontSize: 20))
                            ),
                          )
                          /*Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "\$12.99",color: white,size: 20,),
                          ),*/
                          // CustomText(text: "Some Food",size: 18,color: white,),
                           //CustomText(text:"\$12.99",size: 18,color: white,)
                         ],
                       ),
                     ),
                   ),
               )
             ],

           )
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 65,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Icon(Icons.home,size: 30,color: red,),
                  CustomText(text: "Home",)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Icon(Icons.location_searching,size: 30,color: red,),
                  CustomText(text: "Near by",)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Icon(Icons.shopping_basket,size: 30,color: red,),
                  CustomText(text: "Bag",)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Icon(Icons.account_circle,size: 30,color: red,),
                  CustomText(text: "Account",)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
