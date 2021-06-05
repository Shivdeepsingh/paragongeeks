import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paragon_greeks/ui/screens/servicemodelcat.dart';

class FindTech extends StatefulWidget {
  String type;

  FindTech(this.type);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FindTechState();
  }
}

class FindTechState extends State<FindTech> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white38,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
            // appState.switchScreen.addScreen("");
            //
            //etState(() {});
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Text(
                    "paragon Geek",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Find a technician in your area",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        height: 60,
                        //   color: Colors.white,
                        margin: EdgeInsets.only(
                            left: 30, right: 30, top: 30, bottom: 10),
                        child: TextField(
                          onTap: () {},
                          // controller: text,
                          // onChanged: _onChanged,
                          decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 0.0),
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                ),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.only(top: 10, left: 10),
                              //  hintText: "Email Id",
                              helperStyle: TextStyle(
                                  fontSize: 12, color: Colors.black26)),
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ServiceModelCat(
                                type: widget.type,
                              )),
                    );
                    //  Navigator.pushNamed(context, '/createAccount');
                  },
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.only(left: 30, right: 30, top: 50.0),

                    alignment: Alignment.center,
                    //  margin: EdgeInsets.only(left: 30, right: 30, top: 50),
                    width: MediaQuery.of(context).size.width,

                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Questions? Call (123) 456-7890",
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Terms and conditions",
                    style: TextStyle(color: Colors.black45),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
