import 'package:flutter/material.dart';
import 'package:foodie_restaurant/CommonWidgets/MainContainers/containerItemVerticalListview.dart';


class RestaurantList extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return  Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left:8,top:10,right:8),
              child: Row(
                children: <Widget>[
                  Text("Restaurants",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  Spacer(),
                  Text("View All",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontSize: 11))
                ],
              ),
            ),
           ContainerItemVerticalListView(),
          ]);
  }
}