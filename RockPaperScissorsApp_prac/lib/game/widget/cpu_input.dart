import 'package:flutter/material.dart';
import 'package:rockpaperscissors_app_prac/game/enum.dart';
import 'package:rockpaperscissors_app_prac/game/widget/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;

  const CpuInput({required this.cpuInput, required this.isDone, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(child: SizedBox.shrink()),
        Expanded(
          child: InputCard(
            child: getCpuInput(),
          ),
        ),
        Expanded(child: SizedBox.shrink()),
      ],
    );
  }

  Widget getCpuInput(){
    if(isDone){
      return Image.asset(cpuInput.path);
    }
    return const SizedBox(
      height: 80,
      child: Center(
        child: Text(
          '?',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

}
