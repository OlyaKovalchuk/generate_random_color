import 'dart:ui';

import 'package:equatable/equatable.dart';

abstract class ColorState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitState extends ColorState {}

class ReadyState extends ColorState {
  final Color color;

  ReadyState(this.color);
}

class ErrorState extends ColorState {}
