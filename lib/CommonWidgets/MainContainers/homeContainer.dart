import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/cuisineList.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/desktopImage.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/restaurantItemCard.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/restaurantList.dart';
import 'package:foodie_restaurant/CommonWidgets/Cards/roundedCornerImageCard.dart';
import 'package:foodie_restaurant/Screens/HomeScreen/Widgets/searchBar.dart';

class HomeContainer extends StatefulWidget {
  @override
  _HomeContainerState createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {

    return (_buildMainContent());
    var children;
    // return Container(
    //   child: ListView(
    //     children: <Widget>[
    //       Column(
    //         verticalDirection: VerticalDirection.down,
    //         mainAxisSize: MainAxisSize.max,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: <Widget>[
    //           SearchBar(),
    //           Container(
    //             height: MediaQuery.of(context).size.height,
    //             width: MediaQuery.of(context).size.width,
    //             child: ListView(
    //              physics: ClampingScrollPhysics(),
    //                   shrinkWrap: true,
    //                   scrollDirection: Axis.vertical,
    //               children: <Widget>[
    //                 // search bar to search Restaurants

    //                 CuisineList(),
    //                 //  RestaurantList(),

    //                 ListView(
    //                   physics: ClampingScrollPhysics(),
    //                   shrinkWrap: true,
    //                   scrollDirection: Axis.vertical,
    //                   children: <Widget>[
    //                     // search bar to search Restaurants

    //                     //    CuisineList(),
    //                     RestaurantList(),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           )
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }





    _buildMainContent() {
    return CustomScrollView(
      slivers: <Widget>[
        
        
        SliverAppBar(
          
          actions: <Widget>[
            Icon(Icons.search,size: 25,),
            SizedBox(width: 10,),
            
          ],
         
          automaticallyImplyLeading: false,
          pinned: true,
          titleSpacing: 0.0,
          
          expandedHeight: 120.0,
          
          flexibleSpace: FlexibleSpaceBar(
            background:Container(
              color: Colors.black,
              
              width: MediaQuery.of(context).size.width,
              
              child:  ImageSlider()),
              
              // CachedNetworkImage(imageUrl: "https://m.mome.co/thevaros/files/2017/01/thevaros1.jpg")),
            // title: Text('Title'),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
           // SearchBar(),
            _buildListItem(),
          
            
          ]),
        )
      ],
    );
  }

  Widget _buildListItem() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 0.0, left: 0.0, right: 0.0),
          child: Align(
            alignment: Alignment.center,
            child: CuisineList(),
          ),

       
        ),
           Padding(
              padding: EdgeInsets.only(left:8,top:10,right:8),
              child: Row(
                children: <Widget>[
                  Text("Restaurants",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  Spacer(),
                  Text("View All",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontSize: 11))
                ],
              ),
            ),
        RestaurantList(),

       
       ],
    
      
    );
  }
}




