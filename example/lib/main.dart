import 'package:flutter/material.dart';
import 'package:tag/tag.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Center(
          child: Tag(
            child: Container(
              color: Colors.red,
              height: 200,
              width: 200,
            ),
            text: 'A red container',
            textStyle: TextStyle(
              color: Colors.white,
            ),
            color: Color(0xFFFF2D92),
            labelDecoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
                topLeft: Radius.circular(4),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
