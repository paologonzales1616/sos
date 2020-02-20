import 'package:flutter/material.dart';
import 'package:sos/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.purple,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: width * .05,
          right: width * .05,
        ),
        width: width,
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: Card(
            elevation: 5.0,
            child: Container(
              padding: EdgeInsets.all(
                width * .05,
              ),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Text(
                    "SIGN IN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.purple,
                    ),
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: "Enter Email",
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your user name.';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Container(
                    width: width * 0.70,
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: "Enter Password",
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your password.';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: height * .03,
                  ),
                  ButtonTheme(
                    buttonColor: Colors.purple,
                    minWidth: width * .8,
                    child: RaisedButton(
                      padding: const EdgeInsets.all(14.0),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      ),
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
