import 'dart:async';

import 'package:test_task/bloc/color_bloc.dart';
import 'package:test_task/bloc/color_event.dart';

Timer timerForChangeColor(ColorBloc colorBloc) {
  return Timer.periodic(const Duration(seconds: 2), (timer) {
    colorBloc.add(AutoChangeColorEvent());
    if (colorBloc.isAuto) {
      print('timer cancel');
      timer.cancel();
    }
  });
}