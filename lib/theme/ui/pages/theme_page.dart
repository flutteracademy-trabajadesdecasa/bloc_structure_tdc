import 'dart:math';

import 'package:bloc_structure_tdc/theme/bloc/theme_cubit/theme_cubit.dart';

///ESTRUCTURA DE BLOC
// import 'package:bloc_structure_tdc/theme/bloc/theme_bloc/theme_bloc.dart';
// import 'package:bloc_structure_tdc/theme/bloc/theme_bloc/theme_event.dart';

//ESTRUCTURA DE CUBIT
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

            ///ESTRUCTURA DE BLOC
            // context.read<ThemeBloc>().add(
            //       ChangeThemeEvent(randInt: randIntUser),
            //     );

            //ESTRUCTURA DE CUBIT
            context.read<ThemeCubit>().changeTheme(randIntUser);
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
