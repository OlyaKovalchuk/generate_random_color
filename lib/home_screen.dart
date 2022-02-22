import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/bloc/color_bloc.dart';
import 'package:test_task/bloc/color_event.dart';
import 'package:test_task/bloc/color_state.dart';
import 'package:test_task/components/button_auto_change.dart';
import 'package:test_task/components/hey_text.dart';

import 'constants/constants.dart';

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
            if (state is ReadyState) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: state.color,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HeyText(color: state.color),
                      ButtonAutoChange(colorBloc: _colorBloc),
                    ],
                  ),
                ),
              );
            } else if (state is ErrorState) {
              return Center(
                child: Text(error),
              );
            } else {
              return Container();
            }
          }),
    ));
  }
}
