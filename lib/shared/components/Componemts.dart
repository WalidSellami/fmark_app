import 'package:first_app/shared/cubit/Cubit.dart';
import 'package:flutter/material.dart';

Widget item({
  required String text,
  required dynamic value,
  required List<dynamic> list,
  required Function onChange,
  required Color color,
  required Color dropColor,
  Function ? onPress,

}) =>
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 14.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: (){
                onPress!();
              },
              child: Text(
                text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 17.5,
                  letterSpacing: 0.15,
                  height: 1.25,
                ),
              ),
            ),
          ),
          DropdownButton(
              value: value,
              icon: const Icon(
                Icons.keyboard_arrow_down_outlined,
              ),
              borderRadius: BorderRadius.circular(6),
              dropdownColor: dropColor,
              iconSize: 30,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
              underline: Container(
                height: 2,
                color: color,
              ),
              items: list.map((dynamic value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(
                    '$value',
                  ),
                );
              }).toList(),
              onChanged: (newValue) {
                onChange(newValue);
              }),
        ],
      ),
    );

Widget defaultButton({
  required String text,
  required Function onPress,
}) => ElevatedButton(
  onPressed: (){
    onPress();
  },
  child: Text(
    text,
    style: const TextStyle(
      fontSize: 18.5,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
);