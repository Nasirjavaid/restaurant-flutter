import 'package:flutter/material.dart';
import 'package:foodie_restaurant/config/appConstants.dart';

class UserInfoCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Padding(
        padding: EdgeInsets.only(top: 0),
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
                      padding: EdgeInsets.only(left:20,right:20,top:20),
                      child: Row(children: <Widget>[
                        Text("Previos orders",
                            style: AppTypographyStyles.headingTextStyle.apply(
                              color: Colors.black26,
                            )),
                        Spacer(),
                        Icon(
                          Icons.restaurant,
                          color: Colors.orange,size: 18,
                        ),
                       
                      ])),
                       Divider(
                          color: Colors.black12,
                        ),
                  Padding(
                      padding: EdgeInsets.only(left:20,right:20,top:5),
                      child: Row(children: <Widget>[
                        Text("Explore new restaurants",
                            style: AppTypographyStyles.headingTextStyle.apply(
                              color: Colors.black26,
                            )),
                        Spacer(),
                        Icon(
                          Icons.location_city,
                         color: Colors.orange,size: 18,
                        ),
                        Divider(
                          color: Colors.black12,
                        ),
                      ])),

                         Divider(
                          color: Colors.black12,
                        ),
                  Padding(
                      padding: EdgeInsets.only(left:20,right:20,top:5),
                      child: Row(children: <Widget>[
                        Text("Add new Payment method",
                            style: AppTypographyStyles.headingTextStyle.apply(
                              color: Colors.black26,
                            )),
                        Spacer(),
                        Icon(
                          Icons.credit_card,
                          color: Colors.orange,size: 18,
                        ),
                        Divider(
                          color: Colors.black12,
                        ),
                      ])),

                         Divider(
                          color: Colors.black12,
                        ),
                  Padding(
                      padding: EdgeInsets.only(left:20,right:20,top:5),
                      child: Row(children: <Widget>[
                        Text("Wallet",
                            style: AppTypographyStyles.headingTextStyle.apply(
                              color: Colors.black26,
                            )),
                        Spacer(),
                        Icon(
                          Icons.attach_money,
                         color: Colors.orange,size: 18,
                        ),
                        Divider(
                          color: Colors.black12,
                        ),
                      ])),

                         Divider(
                          color: Colors.black12,
                        ),
                  Padding(
                      padding: EdgeInsets.only(left:20,right:20,top:5,bottom: 20),
                      child: Row(children: <Widget>[
                        Text("Others",
                            style: AppTypographyStyles.headingTextStyle.apply(
                              color: Colors.black26,
                            )),
                        Spacer(),
                        Icon(
                          Icons.info_outline,
                         color: Colors.orange,size: 18,
                        ),
                        Divider(
                          color: Colors.black12,
                        ),
                      ])),
                ]),
          ),
        ]));
  }
  
  }
