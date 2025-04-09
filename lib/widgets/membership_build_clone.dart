import 'package:flutter/material.dart';
import 'package:mdexam/pages/home.dart';
import 'package:mdexam/utils/general/custom_button_clone.dart';

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
    VoidCallback onClickSelectNew,
    bool isfirst,
    bool islast) {
  if (body.length < 10) {
    body = "";
  }

  // ignore: unused_local_variable
  String kConsumableId = "";

  if (homePageState.iosPurchaseMembership) {
    kConsumableId = "1M";
    price = 9.99;

    if (title.compareTo("1 MES") == 0) {
      kConsumableId = "1M";
      price = 9.99;
    }

    if (title.compareTo("3 MESES") == 0) {
      kConsumableId = "3M";
      price = 19.99;
    }

    if (title.compareTo("6 MESES") == 0) {
      kConsumableId = "6M";
      price = 39.99;
    }

    if (title.compareTo("1 AÑO") == 0) {
      kConsumableId = "1A";
      price = 69.99;
    }
  }
/*
  List<PaymentItem> paymentItems = [
    PaymentItem(
      label: title,
      amount: price.toString(),
      status: PaymentItemStatus.final_price,
    )
  ];
*/

  return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: (isfirst || islast)
            ? const BorderRadius.all(
                Radius.circular(40),
              )
            : const BorderRadius.all(Radius.circular(10)),
        color: (isfirst || islast)?const Color.fromARGB(255, 143, 102, 13):const Color.fromARGB(255, 158, 158, 158),
      ),
      child: Container(
          margin: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              (isfirst || islast)? const Radius.circular(40): const Radius.circular(10),
            ),
            color: Colors.white,
          ),
          child: Container(
              color: Colors.white,
              margin: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 20),
              child: SizedBox(
                  height: islast?310:300,
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
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        price > 0 ? "US\$ " + price.toString() : "",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25 * factor,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          height: 160,
                          child: Text(
                            body,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20 * factor,
                                fontWeight: FontWeight.w500),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      buttonShowSelect
                          ? !homePageState.iosPurchaseMembership
                              ? CustomButton(
                                  buttonTitle,
                                  Icons.arrow_circle_right_outlined,
                                  islast?false:true,
                                  Colors.white,
                                  Colors.green, () {
                                  onClickSelect();
                                }, isfirst, islast)
                              : CustomButton(
                                  buttonTitle,
                                  Icons.arrow_circle_right_outlined,
                                  islast?false:true,
                                  Colors.white,
                                  Colors.green, () {
/*                                    
                                  ProductDetails productDetails =
                                      ProductDetails(
                                          id: kConsumableId,
                                          title: title,
                                          description: body,
                                          price: price.toString(),
                                          rawPrice: price,
                                          currencyCode: "USD");

                                  final PurchaseParam purchaseParam =
                                      PurchaseParam(
                                    productDetails: productDetails,
                                  );

                                  homePageState.iapStoreKitPlatform
                                      .buyConsumable(
                                          purchaseParam: purchaseParam);
*/
                                }, isfirst, islast)
/*

                              : ApplePayButton(
                                  paymentConfiguration:
                                      PaymentConfiguration.fromJsonString(
                                          defaultApplePay),
                                  paymentItems: paymentItems,
                                  style: ApplePayButtonStyle.black,
                                  type: ApplePayButtonType.buy,
                                  margin: const EdgeInsets.only(top: 15.0),
                                  onPaymentResult: onApplePayResult,
                                  loadingIndicator: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                )
*/
                          : Container(),
                      buttonShowSelectNew
                          ? CustomButton(
                              buttonTitle,
                              Icons.arrow_circle_right_outlined,
                              false,
                              Colors.white,
                              const Color.fromARGB(255, 238, 197, 61), () {
                              onClickSelectNew();
                            },isfirst, islast)
                          : Container()
                    ],
                  )))));
}

void onApplePayResult(paymentResult) {
  // Send the resulting Apple Pay token to your server / PSP
}
