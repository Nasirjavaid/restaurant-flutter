import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_restaurant/Screens/HomeScreen/homeScreen.dart';

void main() { 


//Making the status bar transparent 
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
));
  
  runApp(MaterialApp(

home:MyAppSplash()
));}

// class MyAppMain extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(

//     home: Center(

//      child:Scaffold(body: Center( child :Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[

//          Icon(Icons.local_grocery_store),
//          Text("Foodie", style: TextStyle(color:Colors.black, fontWeight: FontWeight.w800))
//        ],
//      ))),),
//     );
//   }
// }

class MyAppSplash extends StatefulWidget {
  @override
  _MyAppSplashState createState() => new _MyAppSplashState();
}

class _MyAppSplashState extends State<MyAppSplash> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: new Column(children: <Widget>[
          Divider(
            height: 240.0,
            color: Colors.white,
          ),
          new Icon(Icons.local_grocery_store),
          Divider(
            height: 105.2,
            color: Colors.white,
          ),
        ]),
      ),
    );
  }
}
