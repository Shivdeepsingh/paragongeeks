import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

import '../../utils/networkutils.dart';
import 'otp.dart';

class CreateAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CreateAccountState();
  }
}

class CreateAccountState extends State<CreateAccount> {
  bool _showPassword = true;

  var name = TextEditingController();
  var lastName = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();

  bool _loading = false;

  NetworkUtil _networkUtil = NetworkUtil();

  final _formKey = new GlobalKey<FormState>();

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  _register() {

    if (validateAndSave()) {
      setState(() {
        _loading = true;
      });
      _networkUtil.post(Constants.register, body: {
        "email": email.text,
        "password": password.text,
        "f_name": name.text,
        "l_name": lastName.text
      }, headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      }).then((value) {
        var data = json.decode(value.body);

        if (data['success'] == true) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OTPScreen(
                email: email.text,
              ),
            ),
          );

          setState(() {
            _loading = false;
          });
        }

        setState(() {
          _loading = false;
        });
      }).catchError((error) {
        print(error.toString());
        setState(() {
          _loading = false;
        });
      });
    } else {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 30),
                  child: Text(
                    "Create Paragon Geeks account",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 30),
                  child: Text(
                    "Full Name",
                    style: TextStyle(fontSize: 13, color: Colors.black45),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        // height: 60,
                        //   color: Colors.white,
                        margin: EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: TextFormField(
                          onTap: () {},
                          controller: name,
                          validator: (val) => val.isEmpty ? 'Enter Name' : null,
                          // onChanged: _onChanged,
                          decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 0.0),
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(25.0),
                                ),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.only(top: 10, left: 20),
                              //  hintText: "Email Id",
                              helperStyle: TextStyle(
                                  fontSize: 12, color: Colors.black26)),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "Last Name",
                    style: TextStyle(fontSize: 13, color: Colors.black45),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        //   color: Colors.white,
                        margin: EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: TextFormField(
                          onTap: () {},
                          controller: lastName,
                          validator: (val) =>
                              val.isEmpty ? 'Enter Last Name' : null,
                          // onChanged: _onChanged,
                          decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 0.0),
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(25.0),
                                ),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.only(top: 10, left: 20),
                              //  hintText: "Email Id",
                              helperStyle: TextStyle(
                                  fontSize: 12, color: Colors.black26)),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "Email Address",
                    style: TextStyle(fontSize: 13, color: Colors.black45),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        //   color: Colors.white,
                        margin: EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: TextFormField(
                          onTap: () {},
                          validator: (val) {
                            if (!RegExp(
                                    r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(val)) {
                              return "Enter a valid Email";
                            }

                            return null;
                          },
                          controller: email,
                          // onChanged: _onChanged,
                          decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 0.0),
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(25.0),
                                ),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.only(top: 10, left: 20),
                              //  hintText: "Email Id",
                              helperStyle: TextStyle(
                                  fontSize: 12, color: Colors.black26)),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 13, color: Colors.black45),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        //   color: Colors.white,
                        margin: EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: TextFormField(
                          onTap: () {},
                          obscureText: _showPassword ? true : false,
                          controller: password,
                          validator: (val) =>
                              val.isEmpty ? 'Enter Password' : null,
                          // onChanged: _onChanged,
                          decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 0.0),
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(25.0),
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: _showPassword
                                      ? Colors.grey
                                      : Color(0xff5a5a5a),
                                ),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.only(top: 10, left: 20),
                              //  hintText: "Email Id",
                              helperStyle: TextStyle(
                                  fontSize: 12, color: Colors.black26)),
                        ),
                      ),
                    ),
                  ],
                ),
                _loading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : GestureDetector(
                        onTap: () {
                          _register();
                        },
                        child: Container(
                          height: 50,
                          margin:
                              EdgeInsets.only(left: 30, right: 30, top: 50.0),
                          child: Card(
                            color: Colors.black,
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
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color(0xff52c8fa)),
                              ),
                            ),
                          ),
                        ),
                      )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
