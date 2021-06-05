import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paragon_greeks/ui/screens/service/tvmounting/findtech.dart';

class Plans extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PlansState();
  }
}

class PlansState extends State<Plans> {
  CarouselSlider carouselSlider;
  int _current = 0;

  List<dynamic> getPlans() {
    List<Widget> getPlans = [];

    getPlans.add(Container(
      width: 300,
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text(
                "Essential",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                r"$79/year",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff1d7ce6),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "20%",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff1d7ce6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Discount on Services",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 40),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "180-day",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff1d7ce6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Service gurantee",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 0.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "1",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff1d7ce6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Free home check-ups",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 0.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Color(0xff1d7ce6),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Free home check-ups",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35.0),
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Color(0xff1d7ce6),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(left: 40.0),
                      // width: 180,
                      child: Text(
                        "Waved security & support fees",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35.0),
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Color(0xff1d7ce6),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(left: 40.0),
                      // width: 180,
                      child: Text(
                        "access to member app with virtual diagnostics",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              //  height: 50,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // margin: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Color(0xff1d7ce6),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(right: 20.0),
                      // width: 180,
                      child: Text(
                        "Access to DIY portal",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Icon(
                          Icons.star_border,
                          size: 20,
                          color: Colors.black26,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Priority Booking",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                    width: 80,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 80,
                    child: Column(
                      children: [
                        Icon(
                          Icons.call,
                          size: 20,
                          color: Colors.black26,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "24/7 support",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
    getPlans.add(Container(
      width: 300,
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              alignment: Alignment.center,
              color: Color(0xff1d7ce6),
              child: Text(
                "Standard",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                r"$249/year",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff1d7ce6),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "2",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff1d7ce6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "129 fixed-rate services",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "20%",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff1d7ce6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Discount on Services",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 40),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "365-day",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff1d7ce6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Service gurantee",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 0.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "2",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff1d7ce6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Free home check-ups",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 0.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Color(0xff1d7ce6),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Free home check-ups",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35.0),
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Color(0xff1d7ce6),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(left: 40.0),
                      // width: 180,
                      child: Text(
                        "Waved security & support fees",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35.0),
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Color(0xff1d7ce6),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(left: 40.0),
                      // width: 180,
                      child: Text(
                        "access to member app with virtual diagnostics",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              //  height: 50,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // margin: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Color(0xff1d7ce6),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(right: 20.0),
                      // width: 180,
                      child: Text(
                        "Access to DIY portal",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.star_border,
                          size: 20,
                          color: Colors.black26,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Priority Booking",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                    width: 80,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 80,
                    child: Column(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 20,
                          color: Colors.black26,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Same-day preference",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 80,
                    child: Column(
                      children: [
                        Icon(
                          Icons.call,
                          size: 20,
                          color: Colors.black26,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "24/7 support",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
    getPlans.add(Container(
      width: 300,
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              alignment: Alignment.center,
              color: Colors.black,
              child: Text(
                "Pro",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                r"$499/year",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff1d7ce6),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "5",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff1d7ce6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "129 fixed-rate services",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "20%",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff1d7ce6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Discount on Services",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 40),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "365-day",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff1d7ce6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Service gurantee",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 0.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "4",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff1d7ce6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Free home check-ups",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 0.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Color(0xff1d7ce6),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Free home check-ups",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35.0),
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Color(0xff1d7ce6),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(left: 40.0),
                      // width: 180,
                      child: Text(
                        "Waved security & support fees",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35.0),
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Color(0xff1d7ce6),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(left: 40.0),
                      // width: 180,
                      child: Text(
                        "access to member app with virtual diagnostics",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              //  height: 50,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // margin: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Color(0xff1d7ce6),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(right: 20.0),
                      // width: 180,
                      child: Text(
                        "Access to DIY portal",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.star_border,
                          size: 20,
                          color: Colors.black26,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Priority Booking",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                    width: 80,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 80,
                    child: Column(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 20,
                          color: Colors.black26,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Same-day preference",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 80,
                    child: Column(
                      children: [
                        Icon(
                          Icons.call,
                          size: 20,
                          color: Colors.black26,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "24/7 support",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));

    return getPlans;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                alignment: Alignment.center,
                child: Text(
                  "Save more with Paragon Geek membership program",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                alignment: Alignment.center,
                child: Text(
                  "Get discounted & fixed rates, extended gurantees and pay once your service's done",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, letterSpacing: 1.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 20),
                child: carouselSlider = CarouselSlider(
                    options: CarouselOptions(
                        viewportFraction: 1.0,
                        //    aspectRatio: 1.0,
                        enlargeCenterPage: false,
                        autoPlay: false,
                        reverse: false,
                        height: 520,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (int index, ca) {
                          if (index != null) {}
                          setState(() {
                            _current = index;
                          });
                        }),
                    items: getPlans()),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: map<Widget>(getPlans(), (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      padding: EdgeInsets.only(top: 50),
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _current == index ? Colors.black : Colors.black26,
                      ),
                    );
                  }),
                ),
              ),
              _button(),
              Container(
                child: Text(
                  "Terms & Conditions",
                  style: TextStyle(color: Colors.black45, letterSpacing: 1.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                color: Colors.black12,
                width: MediaQuery.of(context).size.width,
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _button() {
    if (_current == 0) {
      return GestureDetector(
        onTap: () {
          //  Navigator.pushNamed(context, '/createAccount');
        },
        child: Container(
          height: 50,
          margin: EdgeInsets.only(left: 30, right: 30, top: 10.0, bottom: 20),
          child: Container(
            alignment: Alignment.center,
            //  margin: EdgeInsets.only(left: 30, right: 30, top: 50),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Add Essential",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
      );
    }
    if (_current == 1) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FindTech("plans")),
          );
          //  Navigator.pushNamed(context, '/createAccount');
        },
        child: Container(
          height: 50,
          margin: EdgeInsets.only(left: 30, right: 30, top: 10.0, bottom: 20),
          child: Container(
            alignment: Alignment.center,
            //  margin: EdgeInsets.only(left: 30, right: 30, top: 50),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xff1b63af),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Add Standard",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
      );
    }
    if (_current == 2) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FindTech("plans")),
          );
          //  Navigator.pushNamed(context, '/createAccount');
        },
        child: Container(
          height: 50,
          margin: EdgeInsets.only(left: 30, right: 30, top: 10.0, bottom: 20),
          child: Container(
            alignment: Alignment.center,
            //  margin: EdgeInsets.only(left: 30, right: 30, top: 50),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Add Pro",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FindTech("plans")),
        );
        //  Navigator.pushNamed(context, '/createAccount');
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.only(left: 30, right: 30, top: 10.0, bottom: 20),
        child: Container(
          alignment: Alignment.center,
          //  margin: EdgeInsets.only(left: 30, right: 30, top: 50),
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
              color: Color(0xff1b63af),
              borderRadius: BorderRadius.circular(25)),
          child: Text(
            "Add Essential",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
}
