// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:square_in_app_payments/google_pay_constants.dart'
//     as google_pay_constants;
// import 'package:square_in_app_payments/in_app_payments.dart';
// import 'package:square_in_app_payments/models.dart';
//
// import 'buy_sheet.dart';
// import 'colors.dart';
// import 'config.dart';
//
// class Proceed extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return ProceedState();
//   }
// }
//
// class ProceedState extends State<Proceed> {
//   bool isLoading = true;
//   bool applePayEnabled = false;
//   bool googlePayEnabled = false;
//
//   static final GlobalKey<ScaffoldState> scaffoldKey =
//       GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _initSquarePayment();
//
//     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//   }
//
//   Future<void> _initSquarePayment() async {
//     await InAppPayments.setSquareApplicationId(squareApplicationId);
//
//     var canUseApplePay = false;
//     var canUseGooglePay = false;
//     if (Platform.isAndroid) {
//       await InAppPayments.initializeGooglePay(
//           squareLocationId, google_pay_constants.environmentTest);
//       canUseGooglePay = await InAppPayments.canUseGooglePay;
//     } else if (Platform.isIOS) {
//       await _setIOSCardEntryTheme();
//       await InAppPayments.initializeApplePay(applePayMerchantId);
//       canUseApplePay = await InAppPayments.canUseApplePay;
//     }
//
//     setState(() {
//       isLoading = false;
//       applePayEnabled = canUseApplePay;
//       googlePayEnabled = canUseGooglePay;
//     });
//   }
//
//   Future _setIOSCardEntryTheme() async {
//     var themeConfiguationBuilder = IOSThemeBuilder();
//     themeConfiguationBuilder.saveButtonTitle = 'Pay';
//     themeConfiguationBuilder.errorColor = RGBAColorBuilder()
//       ..r = 255
//       ..g = 0
//       ..b = 0;
//     themeConfiguationBuilder.tintColor = RGBAColorBuilder()
//       ..r = 36
//       ..g = 152
//       ..b = 141;
//     themeConfiguationBuilder.keyboardAppearance = KeyboardAppearance.light;
//     themeConfiguationBuilder.messageColor = RGBAColorBuilder()
//       ..r = 114
//       ..g = 114
//       ..b = 114;
//
//     await InAppPayments.setIOSCardEntryTheme(themeConfiguationBuilder.build());
//   }
//
//   Widget build(BuildContext context) => MaterialApp(
//       theme: ThemeData(canvasColor: Colors.white),
//       home: Scaffold(
//           body: isLoading
//               ? Center(
//                   child: CircularProgressIndicator(
//                   valueColor:
//                       AlwaysStoppedAnimation<Color>(mainBackgroundColor),
//                 ))
//               : BuySheet(
//                   applePayEnabled: applePayEnabled,
//                   googlePayEnabled: googlePayEnabled,
//                   applePayMerchantId: applePayMerchantId,
//                   squareLocationId: squareLocationId)));
// }
