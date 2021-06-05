import 'package:flutter/cupertino.dart';

class User extends ChangeNotifier{

  String _token;
  int _userId;
  String _email;
  String _fName;
  String _lName;

  void addToken(String text){
    _token = text;
  }
  void addUserId(int text){
    _userId = text;
  }
  void addEmail(String text){
    _email = text;
  }
  void addFName(String text){
    _fName = text;
  }
  void addLName(String text){
    _lName = text;
  }

  int get userId => _userId;
  String get token => _token;
  String get email => _email;

  String get fName => _fName;

  String get lName => _lName;
}