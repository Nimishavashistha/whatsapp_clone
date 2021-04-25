import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chatModel.dart';

class ButtonCard extends StatelessWidget {
  final String name;
  final IconData icon;

  const ButtonCard({Key key, this.name, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        child: Icon(
          icon,
          color: Colors.white,
          size: 26,
        ),
        backgroundColor: Color(0xFF25D366),
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
