import 'package:flutter/material.dart';

const int maxRandom = 256;

const ColorFilter colorFilter = ColorFilter.matrix([
  -1, //RED
  0,
  0,
  0,
  255, //GREEN
  0,
  -1,
  0,
  0,
  255, //BLUE
  0,
  0,
  -1,
  0,
  255, //ALPHA
  0,
  0,
  0,
  1,
  0,
]);

const double fontSize = 25;

const String heyText = 'Hey there';
const String changeAuto = 'Change automatically';
const String changeManually = 'Change manually';
const String error = 'Error';