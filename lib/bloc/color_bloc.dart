import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/bloc/color_event.dart';
import 'package:test_task/bloc/color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  bool isAuto = true;

  ColorBloc() : super(InitState()) {
    on<TapEvent>((event, emit) => _randomColor(emit));
    on<AutoChangeColorEvent>((event, emit) => _randomColor(emit));
  }

  Future<void> _randomColor(Emitter<ColorState> emit) async {
    emit(InitState());
    Color _color = Color(Random().nextInt(0xffffffff));
    emit(ReadyState(_color));
  }
}
