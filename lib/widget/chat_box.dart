import 'package:flutter/material.dart';
import 'package:whatsapp_app/requirements/contacts.dart';
import 'package:whatsapp_app/widget/my_chart.dart';
import 'package:whatsapp_app/widget/sender_chart.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'].toString() == true.toString()) {
            return MyChat(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString(),
            );
          }
          return SenderChat(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        });
  }
}
