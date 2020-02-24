import 'package:flutter/material.dart';

import 'Widgets/userInfoCardOne.dart';
import 'Widgets/userInfoCardTwo.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
        child: Stack(
          children: <Widget>[
            Column(children: <Widget>[
              Container(
                  height: 220,
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    
                  )),
            ]),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 50),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(children: <Widget>[
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        "Edit",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )
                    ]),
                  ),
                 UserinfoCardOne(),
                 UserInfoCardTwo(),
                                 ],
                               ),
                             )
                           ],
                         ),
                       ),
                     );
                   }
                 

 
}
