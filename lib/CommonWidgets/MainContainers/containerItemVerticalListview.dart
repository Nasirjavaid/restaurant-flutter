import 'package:flutter/material.dart';

import 'package:foodie_restaurant/ListViews/listViewvertical.dart';

class ContainerItemVerticalListView extends StatelessWidget {
  //final Text titleText;
  Widget listView;

  ContainerItemVerticalListView({Key key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: ListViewVertical(),
    );
  }
}
