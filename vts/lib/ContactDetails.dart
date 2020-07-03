import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "TEKNOPARK IZMIR",
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "9 Eylül Ünv. İnciraltı Yerleikesi Depark Teknopark Zeytin Binası/B03 Balçova, İzmir"),
          Text(
            "ISTANBUL",
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "Mandıra Cd. No.11 Mandarins Acıbadem A Blk D.172 Kadıköy, İstanbul"),
          Text(
            "USA PARTNER Company AVICO USA",
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("LLC. 8592 W Sunrise Blvd Ste 406 33320 Plantation, Florida"),
          Text(
            "MALTA PARTNER Company AVICO LTD",
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "Abacus Business Centre L.1 Dun karm str. B’Kara Bypass, Birkirkara, Malta "),
        ],
      ),
    );
  }
}
