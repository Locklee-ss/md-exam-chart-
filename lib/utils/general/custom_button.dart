import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomButton(String caption, IconData icon, bool withIcon,
    Color foreColor, Color backColor, VoidCallback onClick) {
  return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Padding(
          padding: const EdgeInsets.all(5),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                  color: backColor,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      withIcon
                          ? Icon(
                              icon,
                              size: 15,
                              color: foreColor,
                            )
                          : Container(),
                          const SizedBox(width: 5,),
                      Text(
                        caption,
                        style: TextStyle(fontSize: 15, color: foreColor),
                      ),
                    ],
                  )))));
}
