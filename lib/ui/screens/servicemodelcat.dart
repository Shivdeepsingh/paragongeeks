import 'package:flutter/material.dart';
import 'package:paragon_greeks/ui/screens/iphoneservicetype/display.dart';
import 'package:paragon_greeks/ui/screens/samsungsrvicetype/display.dart';
import 'package:paragon_greeks/ui/screens/televisionservicetype/display.dart';

class ServiceModelCat extends StatefulWidget {
  String type;

  ServiceModelCat({this.type});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ServiceModelCatState();
  }
}

class ServiceModelCatState extends State<ServiceModelCat> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: screen(),
      ),
    );
  }

  Widget screen() {
    if (widget.type == "samsung") {
      return SamSungDisplay();
    }

    if (widget.type == "iphone") {
      return IphoneDisplay();
    }

    if (widget.type == "television") {
      return TeleDisplay();
    }

    return Container();
  }
}
