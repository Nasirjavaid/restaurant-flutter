import 'package:flutter/material.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/restaurantItemCard.dart';
import 'package:foodie_restaurant/CommonWidgets/MainContainers/containerItemVerticalListview.dart';


class RestaurantList extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return  Container(
      

      child:   
           ListView.builder(
          padding: EdgeInsets.only(top: 0.0),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 0.0,
              ),
              child: RestaurantItemCard(),
            );
          },
          itemCount: 19,
          shrinkWrap: true, // todo comment this out and check the result
          physics: ClampingScrollPhysics(), // todo comment this out and check the result
        ));




  }
}