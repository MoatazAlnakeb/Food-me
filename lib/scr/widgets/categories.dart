import 'package:flutter/material.dart';
import 'package:foodme/scr/models/category.dart';

import '../commons.dart';
import 'custum_text.dart';

List<Category>categoriesList = [
  Category(name: "Salad",image: "salad.png"),
  Category(name: "Sandwich",image: "sandwich.png"),
  Category(name: "Steak",image: "steak.png"),
  Category(name: "Ice Cream",image: "icecream.png"),
  Category(name: "See Food",image: "see_food.png"),

];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      child: ListView.builder(
        itemCount: categoriesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: red[50],
                          offset: Offset(4,6),
                          blurRadius: 20,
                        )
                      ]
                  ),
                  child: Padding(padding: EdgeInsets.all(4),
                    child: Image.asset("images/${categoriesList[index].image}",width: 100,fit: BoxFit.fill,),
                  ),

                ),
                SizedBox(height: 10,),
                CustomText(text:categoriesList[index].name,size: 18,color: grey,),
              ],
            ),
          );
        },
      ),
    );
  }
}
