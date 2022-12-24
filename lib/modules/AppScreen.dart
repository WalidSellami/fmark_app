import 'package:first_app/shared/_cubit/Cubit.dart';
import 'package:first_app/shared/components/Componemts.dart';
import 'package:first_app/shared/cubit/Cubit.dart';
import 'package:first_app/shared/cubit/States.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class AppScreen extends StatefulWidget {

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit , AppStates>(
      listener: (context , state){},
      builder: (context , state){
        var cubit = AppCubit.get(context);
        return WillPopScope(
          onWillPop: () async{
            return await showAlert(context);
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'FMark',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10.0,
                  ),
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: ThemeCubit.get(context).isDark ? Colors.grey.shade800 : Colors.grey.shade200,
                    child: IconButton(
                      onPressed: (){
                       ThemeCubit.get(context).changeMode();
                      },
                      icon: ThemeCubit.get(context).isDark ? const Icon(
                        Icons.light_mode,
                        color: Colors.white,
                      ) : const Icon(
                        Icons.dark_mode,
                        color: Colors.black,
                      ),
                      tooltip: 'Change Mode',
                    ),
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Mémoire (A1)',
                            style: TextStyle(
                              fontSize: 18.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          item(
                              text: 'Organisation du mémoire',
                              value: cubit.value2,
                              list: cubit.list2,
                              dropColor: ThemeCubit.get(context).isDark ? HexColor('161717') : Colors.white,
                              color: ThemeCubit.get(context).isDark ? Colors.white : Colors.black,
                              onChange: (newValue) {
                                 setState(() {
                                   cubit.value2 = newValue;
                                 });
                              }),
                          item(
                              text: 'Qualité rédactionnelle',
                              value: cubit.val1,
                              list: cubit.list3,
                              dropColor: ThemeCubit.get(context).isDark ? HexColor('161717') : Colors.white,
                              color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                              onChange: (newValue) {
                                 setState(() {
                                   cubit.val1 = newValue;
                                 });
                              }),
                          item(
                              text: 'Qualite de la bibliographie',
                              value: cubit.value_2,
                              list: cubit.list2,
                              dropColor: ThemeCubit.get(context).isDark ? HexColor('161717') : Colors.white,
                              color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                              onChange: (newValue) {
                                setState(() {
                                  cubit.value_2 = newValue;
                                });
                              }),
                          item(
                              text: 'Contenu scientifique',
                              value: cubit.val2,
                              list: cubit.list3,
                              dropColor: ThemeCubit.get(context).isDark ? HexColor('161717') : Colors.white,
                              color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                              onChange: (newValue) {
                                setState(() {
                                  cubit.val2 = newValue;
                                });
                              }),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Code source & Analyse (B1)',
                            style: TextStyle(
                              fontSize: 18.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          item(
                              text: 'Ergonomie / clarté de \n l’analyse',
                              value: cubit.val3,
                              list: cubit.list3,
                              dropColor: ThemeCubit.get(context).isDark ? HexColor('161717') : Colors.white,
                              color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                              onChange: (newValue) {
                                setState(() {
                                  cubit.val3 = newValue;
                                });
                              }),
                          const SizedBox(
                            height: 5.0,
                          ),
                          item(
                              text: 'Effort développement / Analyse : originalité',
                              value: cubit.val4,
                              list: cubit.list3,
                              dropColor: ThemeCubit.get(context).isDark ? HexColor('161717') : Colors.white,
                              color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                              onChange: (newValue) {
                                setState(() {
                                  cubit.val4 = newValue;
                                });
                              }),
                          item(
                              text: 'Qualité des résultats',
                              value: cubit.val5,
                              list: cubit.list3,
                              dropColor: ThemeCubit.get(context).isDark ? HexColor('161717') : Colors.white,
                              color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                              onChange: (newValue) {
                                setState(() {
                                  cubit.val5 = newValue;
                                });
                              }),
                          item(
                              text: 'Maîtrise des outils',
                              value: cubit.val6,
                              list: cubit.list3,
                              dropColor: ThemeCubit.get(context).isDark ? HexColor('161717') : Colors.white,
                              color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                              onChange: (newValue) {
                                setState(() {
                                  cubit.val6 = newValue;
                                });
                              }),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Présentation (C1)',
                            style: TextStyle(
                              fontSize: 18.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          item(
                              text: 'Qualité de la présentation',
                              value: cubit.val7,
                              list: cubit.list3,
                              dropColor: ThemeCubit.get(context).isDark ? HexColor('161717') : Colors.white,
                              color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                              onChange: (newValue) {
                                setState(() {
                                  cubit.val7 = newValue;
                                });
                              }),
                          item(
                              text: 'Expression orale aisée',
                              value: cubit.val8,
                              list: cubit.list3,
                              dropColor: ThemeCubit.get(context).isDark ? HexColor('161717') : Colors.white,
                              color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                              onChange: (newValue) {
                                setState(() {
                                  cubit.val8 = newValue;
                                });
                              }),
                          item(
                              text: 'Problématique bien posée',
                              value: cubit.val9,
                              list: cubit.list3,
                              dropColor: ThemeCubit.get(context).isDark ? HexColor('161717') : Colors.white,
                              color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                              onChange: (newValue) {
                                setState(() {
                                  cubit.val9 = newValue;
                                });
                              }),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Réponses aux questions (D1)',
                            style: TextStyle(
                              fontSize: 18.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          item(
                              text:
                              'Pertinence et qualité des réponses sur le plan scientifique',
                              value: cubit.value1,
                              list: cubit.list1,
                              dropColor: ThemeCubit.get(context).isDark ? HexColor('161717') : Colors.white,
                              color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                              onChange: (newValue) {
                                setState(() {
                                  cubit.value1 = newValue;
                                });
                              }),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              children: [
                                const Text(
                                  'Total',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  padding: const EdgeInsets.all(12.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ThemeCubit.get(context).isDark ? Colors.white :Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${cubit.total}',
                                      style: const TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defaultButton(
                            text: 'Calculate',
                            onPress: (){
                              cubit.getTotal();
                            }),
                        const SizedBox(
                          width: 30.0,
                        ),
                        defaultButton(
                            text: 'Reset',
                            onPress: (){
                              cubit.reset();
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> showAlert(BuildContext context) async{
    return await showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            title: const Text(
              'Do you want exit ?',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'No',
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
              TextButton(
                onPressed: (){
                  SystemNavigator.pop();
                },
                child: const Text(
                  'Yes',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        });
  }
}
