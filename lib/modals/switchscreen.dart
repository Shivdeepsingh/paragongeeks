import 'package:flutter/cupertino.dart';

class SwitchScreen extends ChangeNotifier {
  String _screen = "";
  String _switchSetting = "";
  String _switchMembership = "";
  String _switchModels = "";

  void addSwitchModel(String text) {
    _switchModels = text;
  }

  void addScreen(String text) {
    _screen = text;
  }

  void addSwitchMemberShip(String text) {
    _switchMembership = text;
  }

  void addSwitchSetting(String text) {
    _switchSetting = text;
  }

  String get switchMembership => _switchMembership;
  String get switchSetting => _switchSetting;
  String get screen => _screen;

  String get switchModels => _switchModels;
}
