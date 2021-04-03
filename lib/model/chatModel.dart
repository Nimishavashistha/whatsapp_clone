import 'package:flutter/cupertino.dart';

class ChatModel {
  String name;
  bool isGroup;
  String time;
  String currentMessage;
  ChatModel({this.name, this.isGroup, this.time, this.currentMessage});
}
