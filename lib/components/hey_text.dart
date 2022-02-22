import 'package:flutter/material.dart';
import 'package:test_task/constants/constants.dart';

class HeyText extends StatelessWidget {
  final Color color;

  const HeyText({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: colorFilter,
      child: Text(
        heyText,
        style:
            TextStyle(color: color, fontSize: fontSize, fontWeight: FontWeight.bold),
      ),
    );
  }
}
