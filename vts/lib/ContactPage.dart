import 'package:flutter/material.dart';
import 'package:vts/Bar.dart';
import 'package:vts/ContactDetails.dart';

import 'ContactForm.dart';
import 'ContactIcons.dart';
import 'main.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Color darkBlue = new Color.fromARGB(255, 24, 60, 100);
  Color lightBlue = new Color.fromARGB(255, 78, 167, 206);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: darkBlue,
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [darkBlue, lightBlue]),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
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
            ContactForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ContactDetails(),
                ContactIcons(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
