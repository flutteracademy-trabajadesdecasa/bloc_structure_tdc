import 'package:bloc_structure_tdc/theme/bloc/theme_cubit/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.initial());

  void changeTheme(int randInt) {
    if (randInt % 2 == 0) {
      /// LLAMADA A BASE DE DATOS

      emit(state.copyWith(appTheme: AppTheme.light));
    }
    if (randInt % 2 != 0) {
      emit(state.copyWith(appTheme: AppTheme.dark));
    }
  }
}
