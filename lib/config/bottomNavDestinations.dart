import 'package:flutter/material.dart';

class Destination {
 
  final String title;
  final IconData icon;
  final MaterialColor color;
   const Destination(this.title, this.icon, this.color);
  
}

const List<Destination> allDestinations = <Destination>[
  Destination('Home', Icons.home, Colors.red),
  Destination('Map View', Icons.location_on, Colors.red),
  Destination('Favourite', Icons.favorite, Colors.red),
  Destination('Profile', Icons.person, Colors.red)
];


