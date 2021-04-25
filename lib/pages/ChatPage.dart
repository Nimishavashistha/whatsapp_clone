import 'package:flutter/material.dart';
import 'package:whatsapp_clone/customUi/CustomCard.dart';
import 'package:whatsapp_clone/model/chatModel.dart';
import 'package:whatsapp_clone/screens/selectContact.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Dev Stack",
        isGroup: false,
        time: "4:00",
        currentMessage: "Hii",
        icon: Icons.person),
    ChatModel(
        name: "Yulia",
        isGroup: false,
        time: "7:00",
        currentMessage: "hlo Dev",
        icon: Icons.person),
    ChatModel(
        name: "Family❤❤",
        isGroup: true,
        time: "2:30",
        currentMessage: "Hi EveryOne",
        icon: Icons.group),
    ChatModel(
        name: "Cousins👦👧",
        isGroup: true,
        time: "5:20",
        currentMessage: "hlo guys",
        icon: Icons.group),
    ChatModel(
        name: "Flutter community",
        isGroup: true,
        time: "3:20",
        currentMessage: "hlo from flutter community",
        icon: Icons.group),
    ChatModel(
        name: "rishi",
        isGroup: false,
        time: "2:20",
        currentMessage: "hlo",
        icon: Icons.person),
    ChatModel(
        name: "Henry",
        isGroup: false,
        time: "1:05",
        currentMessage: "Hi whats'up",
        icon: Icons.person),
    ChatModel(
        name: "Flutter help",
        isGroup: true,
        time: "5:20",
        currentMessage: "Hlo",
        icon: Icons.group),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF25D366),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => selectContact()));
          },
          child: Icon(Icons.chat),
        ),
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, index) {
              return CustomCard(
                chatmodel: chats[index],
              );
            }));
  }
}
