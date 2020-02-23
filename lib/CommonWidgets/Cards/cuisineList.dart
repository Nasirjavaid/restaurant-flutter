import 'package:flutter/material.dart';
import 'package:foodie_restaurant/Commonwidgets/MainContainers/containerItemHorizontalListView.dart';

class CuisineList extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return  Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left:10,top:20,right:10),
              child: Row(
                children: <Widget>[
                  Text("Cuisine",
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
           ContainerItemHorizontalListView(),
          ]);
  }
}