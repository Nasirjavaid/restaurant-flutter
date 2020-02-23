import 'package:flutter/material.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/cuisineList.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/restaurantList.dart';

class SingleChildScrollViewWithCuisineListAndRestaurantList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
          
          children: <Widget>[


        //Cousine List (Horizontal)with view ore button
          CuisineList(),

          // Restaurant List (vertical) with view more Button
          RestaurantList(),
      ]),
      
    );
  }
}