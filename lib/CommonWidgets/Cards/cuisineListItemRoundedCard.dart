
import 'package:flutter/material.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/roundedCornerImageCard.dart';

class CuisineListItemRoundedCard extends StatelessWidget {
  
  String imageUrl;
  String cuisnineName;

  CuisineListItemRoundedCard({this.imageUrl,String cuisnineName});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Container(
                height: 70,
                width: 80,
                decoration: BoxDecoration(),
                child: Stack(children: <Widget>[
                  //calling common widget
                  
                 RoundedCornerImageCard(imageUrl: imageUrl,imageHeight: 70,imageRadius: 5,),
                  Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                      
                          child:Padding(padding: EdgeInsets.only(bottom:5),
                          child: Text(
                    "Cuisine Name",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 11),
                  ))))
                ])),

            // Container(
            //   height: 100,
            //   width: 160,
            //   decoration: BoxDecoration(
            //     //borderRadius: BorderRadius.all(Radius.circular(25)),
            //     //shape: BoxShape.circle,
            //     image: DecorationImage(
            //         image: AssetImage('assets/images/sofas.png'),
            //         fit: BoxFit.cover),
            //   ),
            // ),
            // Padding(
            //     padding: EdgeInsets.only(top: 10),
            //     child: Text(
            //       "New song of the day by youtube data",
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 11,
            //           fontWeight: FontWeight.bold),
            //     ))
          ],
        ));
  }
}
