import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110,
        color: Colors.red,
        child: Padding(
            padding: EdgeInsets.only(left: 12, right: 12, top: 25),
            child: Center(
                child: Container(
                    padding: EdgeInsets.all(6.5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    // color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.black38,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )))));
  }
}
