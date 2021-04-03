import 'package:flutter/material.dart';
import 'package:whatsapp_clone/customUi/CustomCard.dart';
import 'package:whatsapp_clone/model/chatModel.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Dev Stack", isGroup: false, time: "4:00", currentMessage: "Hii"),
    ChatModel(
        name: "Yulia", isGroup: false, time: "7:00", currentMessage: "hlo Dev"),
    ChatModel(
        name: "Family❤❤",
        isGroup: true,
        time: "2:30",
        currentMessage: "Hi EveryOne"),
    ChatModel(
        name: "Cousins👦👧",
        isGroup: true,
        time: "5:20",
        currentMessage: "hlo guys"),
    ChatModel(
        name: "Flutter community",
        isGroup: true,
        time: "3:20",
        currentMessage: "hlo from flutter community"),
    ChatModel(
        name: "rishi", isGroup: false, time: "2:20", currentMessage: "hlo"),
    ChatModel(
        name: "Henry",
        isGroup: false,
        time: "1:05",
        currentMessage: "Hi whats'up"),
    ChatModel(
        name: "Flutter help",
        isGroup: true,
        time: "5:20",
        currentMessage: "Hlo"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
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
