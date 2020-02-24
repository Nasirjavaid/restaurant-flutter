import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/cuisineListItemRoundedCard.dart';
import 'package:foodie_restaurant/ListViews/listViewHorizontal.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> _controller = Completer();
  Position currentPosition;
  double zoomVal =5;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          //full screen goole map
          googleMaps(43.712776, -74.105974),

         
          //zoom in function

_zoomMinusFunction(),
_zoomPlusFunction(),
          //build Container

          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 85,
                child: _cuisinesOnMap(43.712776, -74.005974),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState

    getCurrentLocationOfUser();
   

    super.initState();
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
        mapToolbarEnabled: false,
        initialCameraPosition: CameraPosition(target: LatLng(lat, long)),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          newYork,
          newYork_2,
          newYork_3,
          newYork_4,
          userPositionMarker()
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
          onTap: () {
            gotoLocation(lat, long);
          },
        );
      },
    );
  }


  Widget _zoomPlusFunction()
  {
    return Align(alignment: Alignment.bottomRight,
    child: IconButton(icon: Icon(Icons.add), onPressed: (){

      zoomVal++;
      _plus(zoomVal);
    }),);
  }


  Widget _zoomMinusFunction()
  {
    return Align(alignment: Alignment.bottomRight,
    child: IconButton(icon: Icon(Icons.add),color: Colors.deepOrange, onPressed: (){

      zoomVal--;
      _minus(zoomVal);
    }),);
  }

  Future<void> _plus( double zoomVal) async{

 final GoogleMapController mapController = await _controller.future;
    mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(43.712776, -74.105974),
        zoom: zoomVal,
        tilt: 50,
        bearing: 45)));
  }

   Future<void> _minus( double zoomVal) async{

 final GoogleMapController mapController = await _controller.future;
    mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(43.712776, -74.105974),
        zoom: zoomVal,
        tilt: 50,
        bearing: 45)));
  }
}


//Markers for testing purpose
Marker newYork = Marker(
    markerId: MarkerId("mark1"),
    position: LatLng(43.712776, -74.005974),
    infoWindow: InfoWindow(title: "New York 1"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange));
Marker newYork_2 = Marker(
    markerId: MarkerId("mark2"),
    position: LatLng(42.012776, -74.105974),
    infoWindow: InfoWindow(title: "New York 2"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange));

Marker newYork_3 = Marker(
    markerId: MarkerId("mark2"),
    position: LatLng(41.012776, -74.005974),
    infoWindow: InfoWindow(title: "New York 3"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange));

Marker newYork_4 = Marker(
    markerId: MarkerId("mark2"),
    position: LatLng(40.912776, -74.005974),
    infoWindow: InfoWindow(title: "New York 3"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange));
