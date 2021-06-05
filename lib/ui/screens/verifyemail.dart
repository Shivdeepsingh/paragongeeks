import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paragon_greeks/ui/screens/createaccount.dart';
import 'package:paragon_greeks/ui/screens/loginscreen.dart';
import 'package:paragon_greeks/utils/constants.dart';
import 'package:paragon_greeks/utils/networkutils.dart';

class VerifyEmail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VerifyEmailState();
  }
}

class VerifyEmailState extends State<VerifyEmail> {


NetworkUtil _networkUtil = NetworkUtil();
var email = TextEditingController();

final _formKey = new GlobalKey<FormState>();
bool _loading = false;

bool validateAndSave() {
  final form = _formKey.currentState;
  if (form.validate()) {
    form.save();
    return true;
  }
  return false;
}

_verifyEmail(){


 if(validateAndSave()){
   setState(() {
     _loading = true;
   });

   _networkUtil.post(Constants.verifyEmail,body: {
     "email" : email.text
   },headers: {
     'Content-Type': 'application/json',
     'Accept': 'application/json',
   }).then((value){

     print(value.body);
     setState(() {
       _loading = false;
     });

     var extracted = json.decode(value.body);

     if(extracted['message'] =="email present"){
       Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => LoginScreen(email: email.text,)),
       );
     }else{
       Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => CreateAccount()),
       );
     }

   }).catchError((onError){

     print(onError.toString());
     setState(() {
       _loading = false;
     });
   });
 }
}


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
                    margin: EdgeInsets.only(top: 100, left: 20),
                    child: Text(
                      "Enter your email",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      "We'll verify your account using your email",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "Email Address",
                      style: TextStyle(fontSize: 13, color: Colors.black45),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          height: 60,
                          //   color: Colors.white,
                          margin: EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 10),
                          child: TextFormField(
                            controller: email,
                            onTap: () {},
                            validator: (val) {
                              if (!RegExp(
                                  r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(val)) {
                                return "Enter a valid Email";
                              }

                              return null;
                            },
                            // controller: text,
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
               _loading ? Center(child: CircularProgressIndicator(),) :  GestureDetector(
                    onTap: () {
                      _verifyEmail();
                    },
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.only(left: 30, right: 30, top: 50.0),
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
            ),
          ),
        ),
      ),
    );
  }
}
