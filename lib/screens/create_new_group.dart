import 'package:flutter/material.dart';
import 'package:whatsapp_clone/customUi/buttonCard.dart';
import 'package:whatsapp_clone/customUi/contactCard.dart';
import 'package:whatsapp_clone/customUi/group_circleAvatar_card.dart';
import 'package:whatsapp_clone/model/chatModel.dart';

class createGroup extends StatefulWidget {
  @override
  _createGroupState createState() => _createGroupState();
}

class _createGroupState extends State<createGroup> {
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
  List<ChatModel> groups = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Group',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              "Add Participants",
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
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
              itemCount: contacts.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    height: groups.length > 0 ? 90 : 10,
                  );
                }
                return InkWell(
                  onTap: () {
                    if (contacts[index - 1].select == false) {
                      setState(() {
                        contacts[index - 1].select = true;
                        groups.add(contacts[index - 1]);
                      });
                    } else {
                      setState(() {
                        contacts[index - 1].select = false;
                        groups.remove(contacts[index - 1]);
                      });
                    }
                  },
                  child: contactCard(
                    contact: contacts[index - 1],
                  ),
                );
              }),
          groups.length > 0
              ? Column(
                  children: [
                    Container(
                      height: 75,
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: contacts.length,
                        itemBuilder: (context, index) {
                          if (contacts[index].select == true) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  groups.remove(contacts[index]);
                                  contacts[index].select = false;
                                });
                              },
                              child: avtarCard(
                                contact: contacts[index],
                              ),
                            );
                          } else {
                            return Container();
                          }
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    )
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
