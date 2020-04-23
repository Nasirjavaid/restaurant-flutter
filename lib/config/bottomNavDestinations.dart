import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Destination {
 
  final String title;
  final IconData icon;
  final Color color;
   const Destination(this.title, this.icon, this.color);
  
}

const List<Destination> allDestinations = <Destination>[
  Destination('Home', FontAwesomeIcons.home, Colors.redAccent),
  Destination('Map View', FontAwesomeIcons.solidMap, Colors.redAccent),
  Destination('Favourite', FontAwesomeIcons.solidHeart, Colors.redAccent),
  Destination('Profile', Icons.person, Colors.red)
];


