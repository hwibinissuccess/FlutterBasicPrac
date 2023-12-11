import 'package:flutter/material.dart';

// const assetImage Path = 'assets/images';
// const bannerImage = '$assetImagePath/banner.png';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ConstraintsWidget(),
      ),
    );
  }
}

class ConstraintsWidget extends StatelessWidget {
  const ConstraintsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
              color: Colors.blue,
              child: Text(
                'Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! ',
                style: TextStyle(fontSize: 30),
              )),
        ),
        Flexible(
          child: Container(
            color: Colors.red,
            child: Text(
              'Hello World',
              style: TextStyle(fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}
