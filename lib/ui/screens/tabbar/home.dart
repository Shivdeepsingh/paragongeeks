import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paragon_greeks/modals/appstate.dart';
import 'package:paragon_greeks/ui/screens/service/servicetype.dart';
import 'package:paragon_greeks/utils/constants.dart';
import 'package:paragon_greeks/utils/networkutils.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {


  NetworkUtil _networkUtil = NetworkUtil();




  _getServiceList(){

    _networkUtil.get(Constants.serviceList,headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    }).then((value){
      final appState = Provider.of<AppState>(context,listen: false);
      print(value.body);
      appState.services.list.clear();

      var extracted = json.decode(value.body);

      if(extracted['success']== true){
        for(var data in extracted['response']){
          appState.services.list.add(data);
          appState.notifyChange();
        }
      }

    }).catchError((onError){

    });
  }
  _getContentList(){
    final appState = Provider.of<AppState>(context,listen: false);
    _networkUtil.get(Constants.contentList,headers: {
      "Authorization" : "Bearar " + appState.user.token,
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    }).then((value){
      final appState = Provider.of<AppState>(context,listen: false);
      print(value.body);
      appState.services.contentList.clear();

      var extracted = json.decode(value.body);

      if(extracted['success']== true){
        for(var data in extracted['response']){
          appState.services.contentList.add(data);
          appState.notifyChange();
        }
      }

    }).catchError((onError){

    });
  }

  List<Widget> _services() {
    List<Widget> _service = [];

    final appState = Provider.of<AppState>(context,listen: false);


    if(appState.services.list.length !=0){
      for(var data in appState.services.list){
        _service.add(InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ServiceTypeList(serviceName: data['service_name'],),)
            );
              //type: data['service_name'],)
          },
          child: Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: Card(
              elevation: 5,
              shape: BeveledRectangleBorder(
                side: new BorderSide(color: Color(0xff52c8fa), width: 0.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Container(
                      child: Image.network(
                      data['img'],
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      width: 75,
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        data['service_name'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
      }
    }

    return _service;
  }

  List<Widget> _contents() {
    List<Widget> _content = [];

    final appState = Provider.of<AppState>(context,listen: false);


    if(appState.services.contentList.length !=0){
      for(var data in appState.services.contentList){
        _content.add(Container(
          alignment: Alignment.topLeft,
          // margin: EdgeInsets.only(left: 5, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.network(
                  data['content_img'],
                  width: 200,
                  height: 100,
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                child: Text(
                 data['content_name'],
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
      }
    }




    return _content;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getServiceList();
    _getContentList();
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: appState.user.fName != null ?Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Hello" +"\t" + appState.user.fName,
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ): Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Hello",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Flexible(
                        child: GestureDetector(
                      onTap: () {
                        // appState.activeTab.activeTab = 2;
                        // Navigator.pushNamed(context, '/tabScreen');
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black45)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Join",
                              style: TextStyle(color: Colors.black45),
                            ),
                            Text(
                              "Paragon Geeks",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
                Container(
                  color: Color(0xfff8f7ff),
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "New in Paragaon Geeks",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xff52c8fa)),
                        ),
                        margin: EdgeInsets.only(left: 10),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          "Get 10% off your next service",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              child: Container(
                                child: Text(
                                  "Home maintenance made simple to Vetted Technicians at your door Get rid of members and property managers",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black45),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20, left: 20),
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xff52c8fa),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 20,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 30, left: 10),
                  child: Text(
                    "Book a service",
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                ),
                Container(
                  height: 190,
                  child: _services().length != 0 ?ListView.builder(
                      itemCount: _services().length,
                      padding: EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return _services()[index];


                      }): Container(),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 30, left: 10),
                  child: Text(
                    "Top DIY content",
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                ),
                Container(
                  height: 180,
                  child: ListView.builder(
                      itemCount: _contents().length,
                      padding: EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return _contents()[index];
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
