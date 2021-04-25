import 'package:flutter/material.dart';
import 'package:whatsapp_clone/customUi/buttonCard.dart';
import 'package:whatsapp_clone/customUi/contactCard.dart';
import 'package:whatsapp_clone/model/chatModel.dart';
import 'package:whatsapp_clone/screens/create_new_group.dart';

class selectContact extends StatefulWidget {
  @override
  _selectContactState createState() => _selectContactState();
}

class _selectContactState extends State<selectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(name: "Dev Stack", status: "A full stack web developer"),
      ChatModel(name: "Yulia", status: "A Flutter developer"),
      ChatModel(name: "Saket", status: "Can't talk Whatsapp only"),
      ChatModel(name: "Priya", status: "Busy"),
      ChatModel(name: "Muskaan", status: "😁😁😁"),
      ChatModel(name: "Henry", status: "Developer"),
      ChatModel(name: "peter", status: "Sharing is caring"),
      ChatModel(name: "Genelia", status: "Work hard"),
      ChatModel(name: "kajol", status: "keep patience"),
      ChatModel(name: "yusuf", status: "Time is money"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Contact',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              "${contacts.length.toString()} contacts",
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 26,
            ),
            onPressed: () {},
          ),
          PopupMenuButton(onSelected: (val) {
            print(val);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("Invite Friend"),
                value: "Invite Friend",
              ),
              PopupMenuItem(
                child: Text("Contacts"),
                value: "Contacts",
              ),
              PopupMenuItem(
                child: Text("Refresh"),
                value: "Refresh",
              ),
              PopupMenuItem(
                child: Text("Help"),
                value: "Help",
              ),
            ];
          })
        ],
      ),
      body: ListView.builder(
          itemCount: contacts.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => createGroup()));
                },
                child: ButtonCard(
                  icon: Icons.group,
                  name: "New Group",
                ),
              );
            } else if (index == 1) {
              return ButtonCard(
                icon: Icons.person_add,
                name: "New contact",
              );
            }
            return contactCard(
              contact: contacts[index - 2],
            );
          }),
    );
  }
}
