import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "WhatsApp clone",
        theme: new ThemeData(
            fontFamily: "OpenSans",
            primaryColor: new Color(0xff075E54),
            accentColor: new Color(0xff128C7E)),
        home: HomePage());
  }
}
