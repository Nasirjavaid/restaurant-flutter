import 'package:flutter/material.dart';
import 'package:foodie_restaurant/CommonWidgets/MainContainers/homeContainer.dart';
import 'package:foodie_restaurant/Screens/Favourites%20Screen/favouritesScreen.dart';
import 'package:foodie_restaurant/Screens/MapScreen/mapScreen.dart';
import 'package:foodie_restaurant/Screens/Profile%20Screen/profileScreen.dart';
import 'package:foodie_restaurant/config/bottomNavDestinations.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

  

}



class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final allScreenDestiNations =[

    HomeContainer(),
    MapScreen(), 
    FavouritesScreen(),
    ProfileScreen(),
    
  ];

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: allScreenDestiNations
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;

            
          });
        },
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
              icon: Icon(destination.icon,color: Colors.redAccent,),
              backgroundColor: Colors.white,
              title: Text(destination.title, style: TextStyle(color:Colors.redAccent,),));
        }).toList(),

      
      ),
    );
  }

  
}

  