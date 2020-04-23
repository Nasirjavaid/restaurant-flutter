import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/cuisineListItemRoundedCard.dart';
import 'package:foodie_restaurant/CommonWidgets/Dialogues/dialogue.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen>
    with SingleTickerProviderStateMixin {
  Completer<GoogleMapController> _controller = Completer();
  Position currentPosition;
  double zoomVal = 5;
  Widget _bottomSheetWidget;

// for AlerBox
  AnimationController controllerAnim;
  Duration _duration = Duration(milliseconds: 500);
  Tween<Offset> _tween = Tween(begin: Offset(0, 1), end: Offset(0, 0));

  //Kilo meter range for drop down
  String _kiloMeterValue;

  @override
  void initState() {
    // TODO: implement initState
    controllerAnim = AnimationController(vsync: this, duration: _duration);
    getCurrentLocationOfUser();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        // ),

        body: Container(
          child: Stack(
            children: <Widget>[
              //full screen goole map
              googleMaps(43.712776, -74.105974),

              //zoom in function

              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 100.0, left: 10, right: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(252, 70, 53, 0.9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: _zoomPlusFunction(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(252, 70, 53, 0.9),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Center(
                              child: _zoomMinusFunction(),
                            )),

                        // RadialMenuButtons(),

                        SizedBox(
                          height: 6,
                        ),

                        Container(
                          child: DropdownButton<String>(
                            underline: Text(""),
                            elevation: 12,
                            icon: FaIcon(
                              FontAwesomeIcons.arrowCircleDown,
                              color: Colors.redAccent,
                              size: 35,
                            ),
                            value: _kiloMeterValue,
                            focusColor: Colors.redAccent,
                            items: <String>['2km', '5km', '10km', '15km']
                                .map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        value,
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      // SizedBox(
                                      //   width: 6,
                                      // ),
                                      // FaIcon(
                                      //   FontAwesomeIcons.arrowCircleDown,
                                      //   color: Colors.black54,
                                      //   size: 12,
                                      // ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {
                              //TODO: must call api On change to alter the results from Map
                              setState(() {
                                _kiloMeterValue = value;
                              });
                            },
                          ),
                        )
                      ]),
                ),
              ),

              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 85,
                    child: _cuisinesOnMap(43.712776, -74.005974),
                  ),
                ),
              ),

              //Bottom sheet
              bottomSheetWidget()
            ],
          ),
        ),
      ),
    );
  }

  void getCurrentLocationOfUser() {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        currentPosition = position;
        // googleMaps(position.altitude,position.longitude);
      });
    }).catchError((e) {
      print(e);
    });
  }

  Widget bottomSheetWidget() {
    return SizedBox.expand(
      child: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: SlideTransition(
              position: _tween.animate(controllerAnim),
              child: DraggableScrollableSheet(
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      // boxShadow: [
                      //   BoxShadow(color: Colors.black12, blurRadius: 5)
                      // ],
                    ),
                    child: ListView(
                      controller: scrollController,
                      children: <Widget>[
                        Container(
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: GestureDetector(
                                onTap: () async {
//bottom sheet open/close function
                                  bootmSheetCall();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.close,
                                    size: 35,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //Content Container
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                              height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12, blurRadius: 5)
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 50, left: 10, right: 10),
                                child: Text(
                                  "We need to discuss this portion  ",
                                  style: TextStyle(color: Colors.black),
                                ),
                              )),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget googleMaps(double lat, double long) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        scrollGesturesEnabled: true,
        tiltGesturesEnabled: true,
        rotateGesturesEnabled: true,
        myLocationEnabled: true,
        compassEnabled: true,
        buildingsEnabled: true,
        mapToolbarEnabled: true,
        initialCameraPosition: CameraPosition(target: LatLng(lat, long)),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          addMarker(),
          newYork_2,
          newYork_3,
          newYork_4,
          //userPositionMarker()
        },
      ),
    );
  }

// this function will move the camera towards the taped item(From cuisine list) on the map and shows a marker here
  Future<void> gotoLocation(double lat, double long) async {
    final GoogleMapController mapController = await _controller.future;
    mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(43.712776, -74.105974),
        zoom: 15,
        tilt: 50,
        bearing: 45)));
  }

//gives Dynamic makers for map we just need to pass the lat,long
  Marker userPositionMarker() {
    return Marker(
        markerId: MarkerId("mark1"),
        position: LatLng(currentPosition.latitude, currentPosition.longitude),
        infoWindow: InfoWindow(title: "New York 1"),
        icon:
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange));
  }

//Cuisine list in the bottom of Map View
  Widget _cuisinesOnMap(double lat, double long) {
    return
        // Expanded(
        //   child:
        ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: CuisineListItemRoundedCard(
              imageUrl:
                  "https://www.budgetbytes.com/wp-content/uploads/2018/06/BBQ-Tofu-Sliders-above.jpg"),
          onTap: () async {
            gotoLocation(lat, long);

            AlertBox(context);
          },
        );
      },
    );
  }

// zoom in  widget
  Widget _zoomPlusFunction() {
    return Align(
      alignment: Alignment.bottomRight,
      child: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.plusCircle,
            color: Colors.white,
            size: 15,
          ),
          onPressed: () {
            zoomVal++;
            _plus(zoomVal);
          }),
    );
  }

//zoom out widget
  Widget _zoomMinusFunction() {
    return Align(
      alignment: Alignment.bottomRight,
      child: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.minus,
            size: 15,
          ),
          color: Colors.white,
          onPressed: () {
            zoomVal--;
            _minus(zoomVal);
          }),
    );
  }

// zoom in function
  Future<void> _plus(double zoomVal) async {
    final GoogleMapController mapController = await _controller.future;
    mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(43.712776, -74.105974),
        zoom: zoomVal,
        tilt: 50,
        bearing: 45)));
  }

//zoom out function
  Future<void> _minus(double zoomVal) async {
    final GoogleMapController mapController = await _controller.future;
    mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(43.712776, -74.105974),
        zoom: zoomVal,
        tilt: 50,
        bearing: 45)));
  }

//this function will show custom Alert Box for restaurant information
  void AlertBox(BuildContext context) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.6),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: AlertDalogues(context: context),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});
  }

//Bottom Sheet Call back function
  void bootmSheetCall() async {
    if (controllerAnim.isDismissed)
      controllerAnim.forward();
    else if (_controller.isCompleted) controllerAnim.reverse();
  }

// test marker to check bootom sheet
  Marker addMarker() {
    return Marker(
        onTap: () async {
          bootmSheetCall();
        },
        markerId: MarkerId("New MARKER"),
        position: LatLng(43.712776, -74.005974),
        infoWindow: InfoWindow(title: "Marker Function"),
        icon:
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange));
  }

//Markers for testing purpose

  Marker newYork_2 = Marker(
      onTap: () async {},
      markerId: MarkerId("mark2"),
      position: LatLng(42.012776, -74.105974),
      infoWindow: InfoWindow(title: "New York 2"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange));

  Marker newYork_3 = Marker(
      onTap: () {},
      markerId: MarkerId("mark2"),
      position: LatLng(41.012776, -74.005974),
      infoWindow: InfoWindow(title: "New York 3"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange));

  Marker newYork_4 = Marker(
      onTap: () {},
      markerId: MarkerId("mark2"),
      position: LatLng(40.912776, -74.005974),
      infoWindow: InfoWindow(title: "New York 3"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange));
}
