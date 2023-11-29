import 'dart:math';

import 'package:bloc_structure_tdc/theme/bloc/theme_bloc/theme_bloc.dart';
import 'package:bloc_structure_tdc/theme/bloc/theme_bloc/theme_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final int randIntUser = Random().nextInt(10);
            context.read<ThemeBloc>().add(
                  ChangeThemeEvent(randInt: randIntUser),
                );
          },
          child: const Text(
            "Change Theme",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
