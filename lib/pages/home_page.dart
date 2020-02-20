import 'package:flutter/material.dart';
import 'package:sos/pages/location_page.dart';
import 'package:sos/pages/messages_page.dart';
import 'package:sos/pages/year_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
          width: width,
          child: ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(4.0),
                height: height * .2,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Spacer(),
                    Image.asset("assets/images/logo.png"),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      "SOS ALERT\nSYSTEM",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(height: 5.0),
              GestureDetector(
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(24.0),
                    height: height * .2,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/images/mail.png"),
                        Spacer(),
                        Text(
                          "MESSAGES",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessagesPage(),
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              GestureDetector(
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(24.0),
                    height: height * .2,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/images/document.png"),
                        Spacer(),
                        Text(
                          "CASE BY LOCATION",
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LocationPage(),
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              GestureDetector(
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(24.0),
                    height: height * .2,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/images/report.png"),
                        Spacer(),
                        Text(
                          "CASE BY YEAR",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YearPage(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
