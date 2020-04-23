import 'package:flutter/material.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/roundedCornerImageCard.dart';
import 'package:foodie_restaurant/config/appConstants.dart';

class AlertDalogues extends StatefulWidget {
  BuildContext context;

  AlertDalogues({this.context});

  @override
  _AlertDaloguesState createState() => _AlertDaloguesState();
}

class _AlertDaloguesState extends State<AlertDalogues> {
  @override
  Widget build(BuildContext context) {
    return showFancyCustomDialog(context);
  }
}

Widget showFancyCustomDialog(BuildContext context) {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(25.0),
      ),
      height: 190.0,
      width: 300.0,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(),
                child: Stack(children: <Widget>[
                  //calling common widget

                  RoundedCornerImageCard(
                    imageUrl:
                        "https://www.dfives.com/wp-content/uploads/2018/12/1-9.jpg",
                    imageHeight: 170,
                    imageWidth: 300,
                    imageRadius: 10,
                  ),

                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Chicken Menchorian",
                                style: TextStyle(color:Colors.white,fontSize:20, fontWeight:FontWeight.w900),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Offered by",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.green,
                                    size: 10,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Maclord Food villa",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Row(children: <Widget>[
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
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ])
                            ]),
                      ))
                ])),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                 Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Cuisine Detail",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        onTap: () => print("Gesture Detector"),
                      ),
                  
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text(
                            "View Restaurant",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        onTap: () => print("Gesture Detector"),
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Directions",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        onTap: () => print("Gesture Detector"),
                      )
                    ])),
              ),
            ),
          ),
          Align(
            // These values are based on trial & error method
            alignment: Alignment(1.05, -1.05),
            child: InkWell(
              onTap: () {
                //Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.close,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
  // showDialog(
  //     context: context, builder: (BuildContext context) => fancyDialog);
}
