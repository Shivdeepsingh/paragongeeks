import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:paragon_greeks/utils/constants.dart';
import 'package:paragon_greeks/utils/networkutils.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ResetPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ResetPasswordState();
  }
}

class ResetPasswordState extends State<ResetPassword> {
  var old = TextEditingController();
  var newPassword = TextEditingController();
  var rePassword = TextEditingController();

  NetworkUtil _networkUtil = NetworkUtil();

  final formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  _changePassword(BuildContext context) async {
    if (validateAndSave()) {}
    if (newPassword.text == rePassword.text) {
      SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

      _networkUtil.post(Constants.resetPassword, body: {
        "email": sharedPreferences.getString("email"),
        "new_password": newPassword.text,
        "re_password": rePassword.text
      }, headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      }).then((value) {
        print(value.body);
        var extracted = json.decode(value.body);

        if (extracted["success"] == true) {
          final snackBar = SnackBar(
            content: Text(extracted['message']),
          );
          Fluttertoast.showToast(
              msg: extracted['message'],
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
          // Navigator.of(context).pop();
        }
      }).catchError((error) {
        print(error.toString());
      });
    } else {
      final snackBar = SnackBar(
        content: Text("Password Not matched"),
      );
      _scaffoldkey.currentState.showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
        child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          //   height: _height,
                          //   color: Colors.white,
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 40, bottom: 10),
                          child: TextFormField(
                            onTap: () {},
                            controller: old,

                            validator: (val) => val.isEmpty
                                ? 'Old Password can\'t be empty.'
                                : null,
                            // controller: text,
                            // onChanged: _onChanged,
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.white, width: 0.0),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(7.0),
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding: EdgeInsets.only(top: 10, left: 10),
                                hintText: "Old Password",
                                hintStyle:
                                TextStyle(fontSize: 15, color: Colors.black26)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          //  height: _height,
                          //   color: Colors.white,
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          child: TextFormField(
                            onTap: () {},
                            controller: newPassword,

                            validator: (val) => val.isEmpty
                                ? 'New Password can\'t be empty.'
                                : null,
                            // controller: text,
                            // onChanged: _onChanged,
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.white, width: 0.0),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(7.0),
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding: EdgeInsets.only(top: 10, left: 10),
                                hintText: "New Password",
                                hintStyle:
                                TextStyle(fontSize: 15, color: Colors.black26)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          //   height: _height,
                          //   color: Colors.white,
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          child: TextFormField(
                            onTap: () {},
                            controller: rePassword,
                            validator: (val) => val.isEmpty
                                ? 'Re-Enter Password can\'t be empty.'
                                : null,
                            // controller: text,
                            // onChanged: _onChanged,
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.white, width: 0.0),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(7.0),
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding: EdgeInsets.only(top: 10, left: 10),
                                hintText: "Re-enter Password",
                                hintStyle:
                                TextStyle(fontSize: 15, color: Colors.black26)),
                          ),
                        ),
                      ),
                    ],
                  ),

                  GestureDetector(
                    onTap: () {
                      _changePassword(context);
                      //     Navigator.pushNamed(context, '/createAccount');
                    },
                    child: Container(
                      height: 50,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(left: 80, right: 80, top: 100.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Container(
                          alignment: Alignment.center,

                          //  margin: EdgeInsets.only(left: 30, right: 30, top: 50),
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )


                ],
              ),
            )),
      );
  }
}
