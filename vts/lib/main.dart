import 'package:flutter/material.dart';
import 'package:vts/Bar.dart';
import 'package:vts/LoginPage.dart';

import 'ContactPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
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
        child: SingleChildScrollView(
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
                    child: Image.asset("logo_shadowlu.png"),
                  ),
                  Positioned(
                    right: MediaQuery.of(context).size.width * 0.05,
                    child: UpBar(),
                  ),
                ],
              ),
              SizedBox(height:10),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Image.asset("home_page_1_yazili.png"),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("footer.png"),
              ),
              SizedBox(height:10),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Image.asset("home_page_2_yazili.png"),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("footer.png"),
              ),
              SizedBox(height:10),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Image.asset("home_page_3_yazili.png"),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("footer.png"),
              ),
              SizedBox(height:10),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Image.asset("home_page_4_yazili.png"),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("footer.png"),
              ),
              SizedBox(height:10),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Image.asset("home_page_5_1_yazili.png.png"),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("footer.png"),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
