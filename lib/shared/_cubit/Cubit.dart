
import 'package:bloc/bloc.dart';
import 'package:first_app/shared/_cubit/States.dart';
import 'package:first_app/shared/network/local/CacheHelper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeStates> {

  ThemeCubit() : super(InitialThemeState());

  static ThemeCubit get(context) => BlocProvider.of(context);

  bool isDark = false;

  void changeMode({bool? fromShared}){
    if(fromShared != null) {
      isDark = fromShared;
    }else {
      isDark = !isDark;
      CacheHelper.saveData(key: 'isDark', value: isDark).then((value) {
        emit(ChangeThemeState());
      });
    }
  }

}