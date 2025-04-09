import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomButton(String caption, IconData icon, bool withIcon,
    Color foreColor, Color backColor, VoidCallback onClick, bool isfirst, bool islast) {
  return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Padding(
          padding: const EdgeInsets.all(5),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                  color: islast? const Color.fromARGB(255, 233, 145, 45) :backColor,
                  padding: (isfirst||islast)?const EdgeInsets.all(12):const EdgeInsets.all(10),
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
                        style: TextStyle(fontSize: (isfirst||islast)?20:15, color: foreColor),
                      ),
                    ],
                  )))));
}
