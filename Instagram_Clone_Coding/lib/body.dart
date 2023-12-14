import 'package:flutter/material.dart';
import 'package:instagram_clone_coding/screen/home_screen.dart';
import 'package:instagram_clone_coding/screen/search_screen.dart';

class InstaBody extends StatelessWidget {
  final int index;

  const InstaBody({required this.index,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(index == 0){
      return HomeScreen();
    }
    return SearchScreen();
  }
}
