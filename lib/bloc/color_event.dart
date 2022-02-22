import 'package:equatable/equatable.dart';

abstract class ColorEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class TapEvent extends ColorEvent {}

class AutoChangeColorEvent extends ColorEvent {}
