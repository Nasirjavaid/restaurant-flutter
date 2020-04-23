import 'package:flutter/material.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/roundedCornerImageCard.dart';
import 'package:foodie_restaurant/config/appConstants.dart';

class RestaurantItemCard extends StatelessWidget {
  String imageUrl;
  RestaurantItemCard({this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Padding(
          padding: EdgeInsets.only(left: 5, right: 5, top: 0),
          child: Column(
            children: <Widget>[
              Card(
                  elevation: 2,
                  child: Padding(
                      padding: EdgeInsets.all(6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          RoundedCornerImageCard(
                            imageUrl:
                                "https://m.mome.co/thevaros/files/2017/01/thevaros1.jpg", imageHeight: 70,imageWidth: 80,imageRadius: 5,
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 8, right: 6, top: 2, bottom: 2),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          128,
                                      // color: Colors.cyan,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "Resrtaurant",
                                              style: AppTypographyStyles
                                                  .titleTextStyle,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Icon(
                                              Icons.star_border,
                                              color: Colors.orange,
                                              size: 18,
                                            )
                                          ]),
                                    ),
                                    Row(children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.green,
                                        size: 10,
                                      ),
                                      Text(
                                        "DHA phase 1 Lahore",
                                        style:
                                            AppTypographyStyles.smallTextStyle,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                128,
                                        //color: Colors.cyan,
                                        child: Row(children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 11,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "5.0",
                                            style: AppTypographyStyles
                                                .smallTextStyle,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Spacer(),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height: 17,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                        color: Colors.red,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  5))),
                                                  child: Center(
                                                      child: Text(
                                                    "\$450",
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ))))
                                        ])),
                                  ]))
                        ],
                      ))),
            ],
          )),
    );
  }
}
