import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../modals/appstate.dart';
import '../../utils/constants.dart';
import '../../utils/networkutils.dart';


class OTPScreen extends StatefulWidget {

  OTPScreen({this.email});

  final String email;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OTPScreenState();
  }
}

class OTPScreenState extends State<OTPScreen> {

  TextEditingController controller = TextEditingController(text: "");
  bool hasError = false;

  bool _loading = false;

  NetworkUtil _networkUtil = NetworkUtil() ;

  final _formKey = new GlobalKey<FormState>();



  _verifyOtp(){

    setState(() {
      _loading = true;
    });

    final appState = Provider.of<AppState>(context, listen: false);



      _networkUtil.post(Constants.verifyOtp,body: {

        "otp":controller.text

      },headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      }).then((value) async {

        print(value.body);

        var data = json.decode(value.body);


        if(data['success'] == true){

          SharedPreferences sharedPreferences =
              await SharedPreferences.getInstance();
          sharedPreferences.setString("email",data['user']["email"]);
          sharedPreferences.setString("name",data['user']["f_name"]);
          sharedPreferences.setString("lastName",data['user']["l_name"]);
          sharedPreferences.setString("token", data['token']);
          sharedPreferences.setInt("userId", data['user']["user_id"]);



          appState.user.addToken(data['token']);
          appState.user.addUserId(data['user']["user_id"]);

          appState.user.addEmail(data['user']["email"]);
          appState.user.addFName(data['user']["f_name"]);
          appState.user.addLName(data['user']["l_name"]);

          appState.notifyChange();
          Navigator.pushNamed(context, '/tabScreen');

          setState(() {
            _loading = false;
          });

        }
        setState(() {
          _loading = false;
        });



      }).catchError((error){
        setState(() {
          _loading = false;
        });
        print(error.toString());
      });


    }






  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100, left: 30),
                  child: Text(
                    "Account verification",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 30),
                  child: Text(
                    "Please enter the 6 digit code sent to",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 30),
                  child: Text(
                    widget.email,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child:  PinCodeTextField(
                    autofocus: true,
                    controller: controller,
                    hideCharacter: false,
                    highlight: true,
                    highlightColor: Colors.blue,
                    defaultBorderColor: Colors.black,
                    hasTextBorderColor: Colors.green,
                    maxLength: 6,
                    hasError: hasError,
                    maskCharacter: "😎",
                    onTextChanged: (text) {
                      setState(() {
                        hasError = false;
                      });
                    },
                    onDone: (text) {
                      print("DONE $text");
                      print("DONE CONTROLLER ${controller.text}");
                      _verifyOtp();
                    },
                    pinBoxWidth: 50,
                    pinBoxHeight: 60,
                    hasUnderline: true,
                    wrapAlignment: WrapAlignment.spaceAround,
                    pinBoxDecoration:
                    ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                    pinTextStyle: TextStyle(fontSize: 22.0),
                    pinTextAnimatedSwitcherTransition:
                    ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
                    pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
//                    highlightAnimation: true,
                    highlightAnimationBeginColor: Colors.black,
                    highlightAnimationEndColor: Colors.white12,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 40),
                  child: Text(
                    "Didn't receive an email?",
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "Resend Code",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1b63af),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 40,),
             _loading?   Center(child: CircularProgressIndicator(),) : Container()
                // GestureDetector(
                //   onTap: () {
                //     Navigator.pushNamed(context, '/tabScreen');
                //   },
                //   child: Container(
                //     alignment: Alignment.center,
                //     margin: EdgeInsets.only(top: 30),
                //     child: Text(
                //       "Next",
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //         color: Color(0xff1b63af),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
