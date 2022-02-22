import 'package:flutter/material.dart';
import 'package:test_task/utils/timer_function.dart';
import '../bloc/color_bloc.dart';
import '../constants/constants.dart';

class ButtonAutoChange extends StatelessWidget {
  final ColorBloc colorBloc;

  ButtonAutoChange({Key? key, required this.colorBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.amber),
        onPressed: () {
          colorBloc.isAuto = !colorBloc.isAuto;
          if (!colorBloc.isAuto) {
            timerForChangeColor(colorBloc);
          }
        },
        child: Text(
            colorBloc.isAuto ? changeAuto : changeManually));
  }
}
