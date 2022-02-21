import 'dart:async';
import 'package:flutter/material.dart';
import 'bloc/color_bloc.dart';
import 'bloc/color_event.dart';

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
            _timerForChangeColor();
          }
        },
        child: Text(
            colorBloc.isAuto ? 'Change automatically' : 'Change manually'));
  }

  Timer _timerForChangeColor() {
    return Timer.periodic(const Duration(seconds: 2), (timer) {
      colorBloc.add(AutoChangeColorEvent());
      if (colorBloc.isAuto) {
        print('timer cancel');
        timer.cancel();
      }
    });
  }
}
