import 'package:brainplay/functions.dart';
import 'package:flutter/material.dart';
import 'package:whiteboardkit/whiteboardkit.dart';

class Draw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawingBoard(),
    );
  }
}

class DrawingBoard extends StatefulWidget {
  @override
  _DrawingBoard createState() => _DrawingBoard();
}

class _DrawingBoard extends State<DrawingBoard> {
  DrawingController controller;

  @override
  void initState() {
    controller = new DrawingController();
    controller.onChange().listen((draw) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Whiteboard(
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }
}
