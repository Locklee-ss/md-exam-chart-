import 'package:flutter/material.dart';
import 'package:mdexam/pages/home.dart';
import 'package:mdexam/utils/general/custom_button.dart';

Widget membershipBuild(
  HomePageState homePageState,
  String title,
  double price,
  String body,
  String buttonTitle,
  bool buttonShowSelect,
  double factor,
  VoidCallback onClickSelect,
  bool buttonShowSelectNew,
  VoidCallback onClickSelectNew, {
  bool isRecommended = false,
  bool x2 = false
}) {
  if (body.length < 10) {
    body = "";
  }

  // String kConsumableId = "";

  // if (homePageState.iosPurchaseMembership) {
  //   kConsumableId = "1M";
  //   price = 9.99;

  //   if (title == "1 MES") {
  //     kConsumableId = "1M";
  //     price = 9.99;
  //   } else if (title == "3 MESES") {
  //     kConsumableId = "3M";
  //     price = 19.99;
  //   } else if (title == "6 MESES") {
  //     kConsumableId = "6M";
  //     price = 39.99;
  //   } else if (title == "1 AÑO") {
  //     kConsumableId = "1A";
  //     price = 69.99;
  //   }
  // }
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.grey,
        ),
        child: Container(
          margin: const EdgeInsets.all(1),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Container(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: SizedBox(
              height: 300,
              width: 200 * factor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25 * factor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    price > 0 ? "US\$ ${price.toStringAsFixed(2)}" : "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25 * factor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 160,
                    child: Text(
                      body,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20 * factor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  buttonShowSelect
                      ? CustomButton(
                          buttonTitle,
                          Icons.attach_money_outlined,
                          true,
                          Colors.white,
                          const Color.fromARGB(255, 226, 49, 137),
                          onClickSelect,
                        )
                      : Container(),
                  buttonShowSelectNew
                      ? CustomButton(
                          buttonTitle,
                          Icons.money_off_csred_outlined,
                          true,
                          Colors.white,
                          const Color.fromARGB(255, 226, 49, 137),
                          onClickSelectNew,
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
      ),
      if (isRecommended && !x2)
        Positioned(
          top: 130,
          right: 26,
          child: Opacity(opacity: 0.5,
            child: Image.asset(
              'assets/badge.png',
              width: 200,
              height: 169,
            )
          ) 
        ),
      if (isRecommended && x2)
        Positioned(
          top: 105,
          right: 15,
          child: Opacity(opacity: 0.5,
            child: Image.asset(
              'assets/badge.png',
              width: 150,
              height: 126,
            )
          ) 
        ),
    ],
  );
}
