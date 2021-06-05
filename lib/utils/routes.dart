import 'package:flutter/material.dart';
import 'package:paragon_greeks/ui/screens/comingsoon.dart';
import 'package:paragon_greeks/ui/screens/createaccount.dart';
import 'package:paragon_greeks/ui/screens/verifyemail.dart';
import 'package:paragon_greeks/ui/screens/otp.dart';
import 'package:paragon_greeks/ui/screens/service/tvmounting/size.dart';
import 'package:paragon_greeks/ui/screens/settings/aboutscreen.dart';
import 'package:paragon_greeks/ui/screens/settings/contactus.dart';
import 'package:paragon_greeks/ui/screens/settings/myprofile.dart';
import 'package:paragon_greeks/ui/screens/splashscreen.dart';
import 'package:paragon_greeks/ui/screens/tabbar/tabscreen.dart';

class Routes {
  static final routes = {
    '/': (BuildContext context) => SplashScreen(),
    '/verify': (BuildContext context) => VerifyEmail(),
    '/otp': (BuildContext context) => OTPScreen(),
    '/createAccount': (BuildContext context) => CreateAccount(),
    '/tabScreen': (BuildContext context) => TabScreen(),
    '/myProfile': (BuildContext context) => MyProfile(),
    '/contactUs': (BuildContext context) => ContactUs(),
    '/about': (BuildContext context) => AboutScreen(),
    '/comingSoon' : (BuildContext context) => ComingSoon(),
    '/tvSize' : (BuildContext context) => TVSize()
  };

  static MaterialPageRoute generateRoute(RouteSettings settings) {
    final List<String> path = settings.name.split('/');

    if (path[0] != '') return null;
    if (path[1] == 'otpregister') {
      // this is not needed here yet
    }

    return null;
  }

  static MaterialPageRoute unknownRoute(RouteSettings settings) {
    print("Router: " + settings.name + ' is not defined.');

    return null;
  }
}
