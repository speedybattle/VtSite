import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Contact",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.6,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Name/Surname",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width*0.6,
                child: TextField(
                  
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Email",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width*0.6,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Topic",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width*0.6,
                child: TextField(
                  maxLines: 7,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Message",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.075,
                child: RaisedButton(
                  onPressed: null,
                  child: Text("Send"),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
