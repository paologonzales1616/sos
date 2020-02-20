import 'package:flutter/material.dart';
import 'package:sos/pages/login_page.dart';
import 'package:sos/pages/register_page.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        width: width,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: height * .1,
            ),
            Container(
              padding: const EdgeInsets.all(4.0),
              height: height * .2,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Image.asset("assets/images/logo.png"),
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
            Spacer(
              flex: 2,
            ),
            ButtonTheme(
              buttonColor: Colors.white,
              minWidth: width * .8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0),
              ),
              child: RaisedButton(
                padding: const EdgeInsets.all(14.0),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage()
                  ),
                ),
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ButtonTheme(
              buttonColor: Colors.white,
              minWidth: width * .8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0),
              ),
              child: RaisedButton(
                padding: const EdgeInsets.all(14.0),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                ),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
