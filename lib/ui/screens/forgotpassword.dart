import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:paragon_greeks/modals/appstate.dart';
import 'package:paragon_greeks/utils/constants.dart';
import 'package:paragon_greeks/utils/networkutils.dart';
import 'package:provider/provider.dart';

class ForgotPassword extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ForgotPasswordState();
  }

}


class ForgotPasswordState extends State<ForgotPassword>{

  NetworkUtil _networkUtil = NetworkUtil();
  var email = TextEditingController();
  bool _showPassword = true;
  bool _loading = false;
  String _message ="";



  final _formKey = new GlobalKey<FormState>();

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  _login(){
    final appState = Provider.of<AppState>(context, listen: false);
    if(validateAndSave()){
      setState(() {
        _loading = true;
      });
      _networkUtil.post(Constants.forgotPassword,body: {
        "email":email.text,

      },headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      }).then((value) async {

        print(value.body);


        var data = json.decode(value.body);



        if(data['success'] == true) {
          setState(() {
            _message = data['message'];
          });
          Fluttertoast.showToast(
              msg: data['message'],
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );

        }

        setState(() {
          _loading = false;
        });

      }).catchError((onError){
        setState(() {
          _loading = false;
        });
        print(onError.toString());
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

                    margin: EdgeInsets.only(top: 50, left: 40.0,bottom: 10),
                    child: Text(
                      "Enter your Email",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
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

                  _loading ? Center(child: Container( margin: EdgeInsets.only(top: 50),child: CircularProgressIndicator(),),) : GestureDetector(
                    onTap: () {
                      _login();
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
                            "Submit",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xff52c8fa)),
                          ),
                        ),
                      ),
                    ),
                  ),



                  _message != null ?

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 30,left: 30,right: 30),
                    child: Text(_message,textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),)
                      : Container()
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }

}