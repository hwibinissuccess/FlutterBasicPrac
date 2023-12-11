

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget 상하좌우 배치'),
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
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
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
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
