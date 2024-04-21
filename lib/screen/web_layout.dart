import 'package:flutter/material.dart';
import 'package:whatsapp_app/requirements/colors.dart';
import 'package:whatsapp_app/widget/chat_page.dart';
import 'package:whatsapp_app/widget/contact_list.dart';
import 'package:whatsapp_app/widget/web_appbar.dart';
import 'package:whatsapp_app/widget/search.dart';
class WebLayout extends StatelessWidget {
  const WebLayout({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            width: MediaQuery.of(context).size.width * 0.3,
            child: const Column(
              children: [WebAppBar(), WebSearching(), ContactList()],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: dividerColor),
              ),
             
            ),
            child:  const ChatPage(),
          ),
        ],
      ),
    );
  }
}
