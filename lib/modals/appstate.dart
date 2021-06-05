import 'package:flutter/material.dart';
import 'package:paragon_greeks/modals/activetab.dart';
import 'package:paragon_greeks/modals/services.dart';
import 'package:paragon_greeks/modals/switchscreen.dart';
import 'package:paragon_greeks/modals/user.dart';

class AppState with ChangeNotifier {
  final switchScreen = SwitchScreen();
  final activeTab = ActiveTab();
  final user = User();
  final services = ServiceModal();

  notifyChange() {
    notifyListeners();
  }

  AppState();
}
