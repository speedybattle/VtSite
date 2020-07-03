import 'package:flutter/material.dart';
import 'package:vts/Bar.dart';
import 'package:vts/main.dart';

import 'LoginForm.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/login_page_back.png"),
                fit: BoxFit.cover)),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/header.png"),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Image.asset("logo_shadowlu.png")),
                ),
                Positioned(
                  right: MediaQuery.of(context).size.width * 0.05,
                  child: UpBar(),
                ),
              ],
            ),
            Center(
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.3750,
                  width: MediaQuery.of(context).size.height * 0.3750,
                  child: LoginForm()),
            ),
          ],
        ),
      ),
    );
  }
}
