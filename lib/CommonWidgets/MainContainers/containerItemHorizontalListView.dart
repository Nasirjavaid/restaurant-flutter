import 'package:flutter/material.dart';
import 'package:foodie_restaurant/ListViews/listViewHorizontal.dart';

class ContainerItemHorizontalListView extends StatelessWidget {
 
  //final Text titleText;

  ContainerItemHorizontalListView({Key key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            child: ListViewHorizontal(),
          )
        ],
      ),
    );
  }
}
