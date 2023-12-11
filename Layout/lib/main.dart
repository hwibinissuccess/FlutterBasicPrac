

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget 상하 배치'),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 100,
          width: 80,
          color: Colors.red,
          child: Text('Container 1'),
        ),
        Container(
          height: 100,
          width: 80,
          color: Colors.green,
          child: Text('Container 2'),
        ),
        Container(
          height: 100,
          width: 80,
          color: Colors.blue,
          child: Text('Container 3'),
        ),
      ],
    );
  }
}
