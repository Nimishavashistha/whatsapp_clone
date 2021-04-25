import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/camera_screen.dart';
import 'package:whatsapp_clone/screens/homePage.dart';
import 'package:camera/camera.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
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
