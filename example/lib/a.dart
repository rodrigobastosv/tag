import 'package:flutter/material.dart';
import 'package:tag/tag.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Tag(
            rightPadding: 12,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://t1.gstatic.com/images?q=tbn:ANd9GcSZqF3OGhXYqL8DSbLynQ-qA2EIniPAljZXhUTZ8Ay6f6g-um21wsmJsBkeLkjW'),
            ),
            text: 'Lewis Hamilton',
            textStyle: TextStyle(
              color: Colors.white,
            ),
            color: Colors.grey,
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
