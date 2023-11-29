import 'package:bloc_structure_tdc/theme/bloc/theme_bloc/theme_bloc.dart';
import 'package:bloc_structure_tdc/theme/bloc/theme_bloc/theme_state.dart';
import 'package:bloc_structure_tdc/theme/ui/pages/theme_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: state.appTheme == AppTheme.light
                ? ThemeData.light()
                : ThemeData.dark(),
            home: const ThemePage(),
          );
        },
      ),
    );
  }
}
