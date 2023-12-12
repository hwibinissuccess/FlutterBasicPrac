import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Body(),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PracStateless(),
        PracStateful(index:3),
      ],
    );
  }
}

class PracStateless extends StatelessWidget {
  const PracStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class PracStateful extends StatefulWidget {

  final int index;

  const PracStateful({required this.index, Key? key}) : super(key: key);

  @override
  State<PracStateful> createState() => _PracStatefulState();
}

class _PracStatefulState extends State<PracStateful> {

  late int _index;
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    _index=widget.index;
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: (){
          setState(() {
            if(_index==5){
              _index=0;
              return;
            }
            _index++;
          });
        },
        child: Container(
          color: Colors.blue.withOpacity(_index/5),
          child: Center(
            child: Text('$_index'),
          ),
        ),
      ),
    );
  }
}
