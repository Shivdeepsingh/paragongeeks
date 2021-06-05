import 'package:flutter/cupertino.dart';

class ActiveTab extends ChangeNotifier {
  List<Map<String, dynamic>> _cart = [];

  List<Map<String, dynamic>> get cart => _cart;
}
