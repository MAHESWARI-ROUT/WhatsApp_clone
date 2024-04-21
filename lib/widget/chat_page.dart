import 'package:flutter/material.dart';
import 'package:whatsapp_app/requirements/contacts.dart';
import 'package:whatsapp_app/widget/web_chat_typebar.dart';
import 'package:whatsapp_app/widget/chat_box.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(2),
      width: screenWidth * 0.6,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsetsDirectional.only(bottom: 2),
            child: AppBar(
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.account_circle),
                  );
                },
              ),
              centerTitle: false,
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage(
                      info[3]['ProfilePic'].toString(),
                    ),
                  ),
                  Text(
                    info[0]['name'].toString(),style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight * 0.85,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backgroundImage.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: const ChatBox(),
          ),
          Container(
            padding: const EdgeInsets.all(2),
            child: const WebChatTypeBar(),
          )
        ],
      ),
    );
  }
}
