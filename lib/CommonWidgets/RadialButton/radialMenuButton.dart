import 'package:flutter/material.dart';
import 'dart:math';
import 'package:vector_math/vector_math.dart' show radians, Vector3;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class RadialMenuButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'FlutterBase',
        home: Scaffold(
            body: SizedBox.expand(child: RadialMenu()) 
        )
    );
  }
}

class RadialMenu extends StatefulWidget {
  createState() => _RadialMenuState();
}

class _RadialMenuState extends State<RadialMenu> with SingleTickerProviderStateMixin {
  
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(milliseconds: 900), vsync: this);
                  // ..addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return RadialAnimation(controller: controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}


class RadialAnimation extends StatelessWidget {
    RadialAnimation({ Key key, this.controller }) :

    translation = Tween<double>(
      begin: 0.0,
      end: 90.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.elasticOut
      ),
    ),

    scale = Tween<double>(
      begin: 1.5,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.fastOutSlowIn
      ),
    ),

    rotation = Tween<double>(
      begin: 0.0,
      end: 360.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.0, 0.7,
          curve: Curves.decelerate,
        ),
      ),
    ),
    
  super(key: key);

  final AnimationController controller;
  final Animation<double> rotation;
  final Animation<double> translation;
  final Animation<double> scale;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, widget) { 
        return Transform.rotate(
          angle: radians(rotation.value),
          child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // _buildButton(0, color: Colors.red, icon: FontAwesomeIcons.thumbtack,myHeroTag: "btn1\n"),
            // _buildButton(45, color: Colors.green, icon:FontAwesomeIcons.sprayCan,myHeroTag: "btn2\n"),
             _buildButton(90, color: Colors.orange, icon: FontAwesomeIcons.fire,myHeroTag: "btn3\n"),
            _buildButton(135, color: Colors.blue, icon:FontAwesomeIcons.kiwiBird,myHeroTag: "btn4\n"),
            _buildButton(180, color: Colors.black, icon:FontAwesomeIcons.cat,myHeroTag: "btn5\n"),
            _buildButton(225, color: Colors.indigo, icon:FontAwesomeIcons.paw,myHeroTag: "btn6\n"),
            _buildButton(270, color: Colors.pink, icon: FontAwesomeIcons.bong,myHeroTag: "btn7\n"),
          //  _buildButton(315, color: Colors.yellow, icon:FontAwesomeIcons.bolt,myHeroTag: "btn8\n"),
            Transform.scale(
              scale: scale.value - 1,
              child: FloatingActionButton(
                 heroTag: "newBtn2",
                child: Icon(FontAwesomeIcons.timesCircle), onPressed: _close, backgroundColor: Colors.red,),
            ),
            Transform.scale(
              scale: scale.value,
              child: FloatingActionButton(
                heroTag: "newBtn1",
                child: Icon(FontAwesomeIcons.solidDotCircle), onPressed: _open),
            )
        
        ])
      );
    });
  }

  _open() {
    controller.forward();
  }

  _close() {
    controller.reverse();
  }

  _buildButton(double angle, { Color color, IconData icon ,Object myHeroTag}) {
    final double rad = radians(angle);
    return Transform(
      transform: Matrix4.identity()..translate(
        (translation.value) * cos(rad), 
        (translation.value) * sin(rad)
      ),

      child: FloatingActionButton(
        heroTag:myHeroTag ,
        child: Icon(icon), backgroundColor: color, onPressed: _close, elevation: 0)
    );
  }
}