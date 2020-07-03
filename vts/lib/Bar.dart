import 'package:flutter/material.dart';
import 'package:vts/LoginPage.dart';
import 'package:vts/main.dart';

import 'ContactPage.dart';

class UpBar extends StatelessWidget {
  final barItems = ["Home", "Contact", "Login"];
  Color barBlue = new Color.fromARGB(255, 7, 40, 81);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 22),
                  child: Text(
                    barItems[0],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ContactPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 22),
                  child: Text(
                    barItems[1],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage ()));},
                child: Padding(
                  padding: const EdgeInsets.only(right: 22),
                  child: Text(
                    barItems[2],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
