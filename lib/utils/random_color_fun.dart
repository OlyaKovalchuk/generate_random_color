import 'dart:ui';

import 'package:test_task/utils/random_num_fun.dart';

Color getRandomColor() =>
    Color.fromRGBO(getRandomNum(), getRandomNum(), getRandomNum(), 1);
