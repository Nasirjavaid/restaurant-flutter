import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RoundedCornerImageCard extends StatelessWidget {
  String imageUrl;
  RoundedCornerImageCard({this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            Container(
              height: 70,
              width: 80,
              decoration: BoxDecoration(),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black38, BlendMode.colorBurn)),
                  ),
                ),
                placeholder: (context, ur) {
                  return SizedBox(
                      height: 12,
                      width: 12,
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
