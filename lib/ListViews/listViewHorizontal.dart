import 'package:flutter/material.dart';
import 'package:foodie_restaurant/Commonwidgets/Cards/cuisineListItemRoundedCard.dart';

class ListViewHorizontal extends StatelessWidget {


   Function onTapFunction;
  ListViewHorizontal({this.onTapFunction});
  @override
  Widget build(BuildContext context) {
       return
        // Expanded(
        //   child:

        ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: CuisineListItemRoundedCard(imageUrl: "https://www.budgetbytes.com/wp-content/uploads/2018/06/BBQ-Tofu-Sliders-above.jpg"),
          onTap:() =>onTapFunction,
          
         // {
          //   widget.onTapFunction;
          //   // Navigator.push(
          //   //     context, MaterialPageRoute(builder: (context) => TopCast()));
          // },
        );
      },
    );
  }
}