import 'package:flutter/material.dart';

class ContactIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset("assets/contact_page_icons.png")
        ],
      ),
    );
  }
}