import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';

class ScanQR extends StatefulWidget {
  @override
  _ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  String qrCodeResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("saving"),
        backgroundColor: Colors.white,
      ),
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        //in container add pay with upi
        Container(
          child: Text(
            "Pay Through UPI",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter UPI Number',
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                qrCodeResult,
                style: TextStyle(
                  fontSize: 50.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                padding: EdgeInsets.all(15),
                onPressed: () async {
                  String codeSanner =
                      await BarcodeScanner.scan(); //barcode scnner
                  setState(() {
                    qrCodeResult = codeSanner;
                  });
                },
                child: Text(
                  "Open Scanner",
                  style: TextStyle(color: Colors.indigo[900]),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ],
          ),
        ),
        Text(
          "Search Contact",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),

        //in container search
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
              decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Search Number',
            suffixIcon: Icon(Icons.contact_phone),
          )),
        ),

        Card(
            child: ListTile(
          title: Text("lisa"),
          leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
        )),
        Card(
            child: ListTile(
          title: Text("Anchr"),
          leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
        )),
        Card(
            child: ListTile(
          title: Text("Aria"),
          leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
        )),
        Card(
            child: ListTile(
          title: Text("Barbie"),
          leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
        ))
      ]),
    );
  }
}
