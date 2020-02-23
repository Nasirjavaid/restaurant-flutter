import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class CirculerProfileAvatarImage extends StatefulWidget {
  String imageUrl;
  double radiusOfImage;
  CirculerProfileAvatarImage({this.imageUrl, this.radiusOfImage});

  @override
  _CirculerProfileAvatarImageState createState() => _CirculerProfileAvatarImageState();
}

class _CirculerProfileAvatarImageState extends State<CirculerProfileAvatarImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CircularProfileAvatar(
      widget.imageUrl, //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
      radius: widget.radiusOfImage, // sets radius, default 50.0
      backgroundColor:
          Colors.transparent, // sets background color, default Colors.white
      borderWidth: 10, // sets border, default 0.0

      cacheImage: true, // allow widget to cache image against provided url
      onTap: () {
        print('Edit the image');
      }, // sets on tap
    ));
  }
}
