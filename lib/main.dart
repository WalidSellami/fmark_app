import 'package:first_app/modules/AppScreen.dart';
import 'package:first_app/shared/_cubit/States.dart';
import 'package:first_app/shared/cubit/Cubit.dart';
import 'package:first_app/shared/network/local/CacheHelper.dart';
import 'package:first_app/shared/styles/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'shared/_cubit/Cubit.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();

  bool? isDark = CacheHelper.getData(key: 'isDark');

  runApp(MyApp(isDark));
}

class MyApp extends StatelessWidget {

  bool? isDark;

  MyApp(this.isDark);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) => AppCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => ThemeCubit()..changeMode(fromShared: isDark),
        ),
      ],
      child: BlocConsumer<ThemeCubit , ThemeStates>(
        listener: (context , state){},
        builder: (context , state){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter App',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ThemeCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: AppScreen(),
          );
        },
      ),
    );
  }
}


