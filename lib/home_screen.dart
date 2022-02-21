import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/bloc/color_bloc.dart';
import 'package:test_task/bloc/color_event.dart';
import 'package:test_task/bloc/color_state.dart';
import 'package:test_task/button_auto_change.dart';

class HomeScreen extends StatelessWidget {
  final ColorBloc _colorBloc = ColorBloc();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        if (_colorBloc.isAuto) {
          _colorBloc.add(TapEvent());
        }
      },
      child: BlocBuilder(
          bloc: _colorBloc..add(TapEvent()),
          builder: (context, state) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              color: state is ReadyState ? state.color : Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Hey there',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    ButtonAutoChange(colorBloc: _colorBloc),
                  ],
                ),
              ),
            );
          }),
    ));
  }
}
