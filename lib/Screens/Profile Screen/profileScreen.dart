import 'package:flutter/material.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/circulerProfileAvatar.dart';
import 'package:foodie_restaurant/config/appConstants.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Column(children: <Widget>[
            Container(
                height: 220,
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Colors.red,
                )),
          ]),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 50),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(children: <Widget>[
                    Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      "Edit",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                  ]),
                ),
                Padding(
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
                                            .headingTextStyle.apply(color:Colors.black26,)),
                                    Spacer(),
                                    Text("\$560",
                                        style: AppTypographyStyles
                                            .headingTextStyle
                                            .apply(color: Colors.orange)),
                                  ])),
                            ]),
                      ),
                    ])),
              ],
            ),
          )
        ],
      ),
    );
  }
}
