import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Duration _duration = Duration(milliseconds: 500);
  Tween<Offset> _tween = Tween(begin: Offset(0, 1), end: Offset(0, 0));

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _duration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        child: FloatingActionButton(
          child: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: _controller),
          elevation: 5,
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          onPressed: () async {
            if (_controller.isDismissed)
              _controller.forward();
        
             else if (_controller.isCompleted)
              _controller.reverse();
          },
        ),
      ),
      body: SizedBox.expand(
        child: Stack(
          children: <Widget>[
            FlutterLogo(size: 500),
            SizedBox.expand(
              child: SlideTransition(
                position: _tween.animate(_controller),
                child: DraggableScrollableSheet(
                  builder: (BuildContext context, ScrollController scrollController) {
                    return Container(
                      color: Colors.blue[800],
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 25,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(title: Text('Item $index'));
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
