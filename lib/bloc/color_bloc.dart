import 'dart:async';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/bloc/color_event.dart';
import 'package:test_task/bloc/color_state.dart';
import 'package:test_task/utils/random_color_fun.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  bool isAuto = true;

  ColorBloc() : super(InitState()) {
    on<TapEvent>((event, emit) => _randomColor(emit));
    on<AutoChangeColorEvent>((event, emit) => _randomColor(emit));
  }

  Future<void> _randomColor(Emitter<ColorState> emit) async {
    emit(InitState());
    try {
      Color _color = getRandomColor();

      emit(ReadyState(_color));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
