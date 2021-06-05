import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paragon_greeks/modals/appstate.dart';
import 'package:paragon_greeks/ui/screens/forgotpassword.dart';
import 'package:paragon_greeks/utils/constants.dart';
import 'package:paragon_greeks/utils/networkutils.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {

  LoginScreen({this.email});

  final String email;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {


  NetworkUtil _networkUtil = NetworkUtil();
  var password = TextEditingController();
  bool _showPassword = true;
  bool _loading = false;



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
      _networkUtil.post(Constants.login,body: {
        "email":widget.email,
        "password":password.text
      },headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      }).then((value) async {

        print(value.body);


        var data = json.decode(value.body);



        if(data['success'] == true) {
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
                      "Enter your Password",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      widget.email,
                      style: TextStyle(fontSize: 15),
                    ),
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
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child:   Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: Text("Forgot Password?"),
                ),
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
                            "Login",
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
