import 'package:flutter/material.dart';

import 'package:foodie_restaurant/CommonWidgets/Cards/restaurantItemCard.dart';



class ListViewVertical extends StatelessWidget {

  String imageUrl;

ListViewVertical({this.imageUrl});
  @override
  Widget build(BuildContext context) {
       return
        // Expanded(
        //   child:

        ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 15,
      physics: ClampingScrollPhysics(),
      
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: RestaurantItemCard(imageUrl:imageUrl),
          onTap: () {
        
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => TopCast()));
          },
        );
      },
    );
  }
}