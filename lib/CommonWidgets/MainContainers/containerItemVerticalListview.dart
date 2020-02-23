import 'package:flutter/material.dart';
import 'package:foodie_restaurant/ListViews/listViewvertical.dart';

class ContainerItemVerticalListView extends StatelessWidget {
 
  //final Text titleText;
  Widget listView;

  ContainerItemVerticalListView({Key key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        children: <Widget>[
          
          Container(
           height: 300,
            child: ListViewVertical(),
          )
        ],
      ),
    );
  }
}
