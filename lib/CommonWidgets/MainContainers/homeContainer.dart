import 'package:flutter/material.dart';
import 'package:foodie_restaurant/Screens/HomeScreen/Widgets/searchBar.dart';
import 'package:foodie_restaurant/Screens/HomeScreen/Widgets/singleChildScrollViewWithCuisineListAndRestaurant.dart';

class HomeContainer extends StatefulWidget {
  @override
  _HomeContainerState createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          // search bar to search Restaurants
          SearchBar(),

          
          //Single Child ScrollView With CuisineList and RestaurantList
          SingleChildScrollViewWithCuisineListAndRestaurantList(),

           // Bottom Navigation(Home, near by restaurants , favourites restaurants, and User profile)
        ],
      ),
    
     
    );
  }
}