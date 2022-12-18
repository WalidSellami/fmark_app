
import 'package:bloc/bloc.dart';
import 'package:first_app/shared/cubit/States.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {

  AppCubit() : super(InitialAppState());

  static AppCubit get(context) => BlocProvider.of(context);

  dynamic value1 = 0;
  List<dynamic> list1 = [0, 0.25, 0.5, 0.75, 1, 1.25, 1.5, 1.75, 2];

  dynamic value2 = 0;
  dynamic value_2 = 0;
  List<dynamic> list2 = [0, 0.25, 0.5];

  dynamic val1 = 0;
  dynamic val2 = 0;
  dynamic val3 = 0;
  dynamic val4 = 0;
  dynamic val5 = 0;
  dynamic val6 = 0;
  dynamic val7 = 0;
  dynamic val8 = 0;
  dynamic val9 = 0;
  List<dynamic> list3 = [0, 0.25, 0.5, 0.75, 1];

  dynamic total = 0;

  void getTotal(){
    total = value2 + value_2 + val1 + val2 + val3 + val4 + val5
        + val6 + val7 + val8 + val9 + value1;
    emit(GetTotalAppState());
  }

  void reset(){
    total = 0;
    value1 = 0;
    value2 = 0;
    value_2 = 0;
    val1 = 0; val2 = 0;
    val3 = 0; val4 = 0;
    val5 = 0; val6 = 0;
    val7 = 0; val8 = 0;
    val9 = 0;
    emit(ResetValuesAppState());
  }

}