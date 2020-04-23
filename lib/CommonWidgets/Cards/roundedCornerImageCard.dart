import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RoundedCornerImageCard extends StatelessWidget {
  String imageUrl;
  double imageHeight,imageWidth,imageRadius;
  RoundedCornerImageCard({this.imageUrl,this.imageHeight,this.imageWidth,this.imageRadius});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            Container(
              height: imageHeight, //70
              width: imageWidth,    //80
              decoration: BoxDecoration(),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(imageRadius)),
                    image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black12, BlendMode.difference)
                            
                            ),
                  ),
                ),
                placeholder: (context, ur) {
                  return SizedBox(
                      height: 10,
                      width: 10,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ));
                },
                errorWidget: (context, url, error) => Icon(
                  Icons.error,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ));
  }
}
