import 'package:flutter/material.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/circulerProfileAvatar.dart';
import 'package:foodie_restaurant/config/appConstants.dart';

class UserinfoCardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(children: <Widget>[
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Row(children: <Widget>[
                                    CirculerProfileAvatarImage(
                                      imageUrl:
                                          "https://scontent.flhe12-1.fna.fbcdn.net/v/t1.0-9/p720x720/64466102_2173124166138425_7401714305965490176_o.jpg?_nc_cat=109&_nc_sid=85a577&_nc_ohc=ncVqNtvXEOEAX8IrVZ3&_nc_ht=scontent.flhe12-1.fna&_nc_tp=6&oh=7153c95cefdc3c2a523030f5a92a1763&oe=5EF2858B",
                                      radiusOfImage: 35.0,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Nasir Javaid",
                                                style: AppTypographyStyles
                                                    .headingTextStyle),
                                            Text("nasirjavaid73@gmail.com",
                                                style: AppTypographyStyles
                                                    .smallTextStyle),
                                          ],
                                        ))
                                  ])),
                              Divider(
                                color: Colors.black12,
                              ),
                              Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(children: <Widget>[
                                    Text("Credit",
                                        style: AppTypographyStyles
                                            .headingTextStyle
                                            .apply(
                                          color: Colors.black26,
                                        )),
                                    Spacer(),
                                    Text("\$560",
                                        style: AppTypographyStyles
                                            .headingTextStyle
                                            .apply(color: Colors.orange)),
                                  ])),
                            ]),
                      ),
                    ]));
  }
}