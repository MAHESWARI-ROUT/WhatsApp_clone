
import 'package:flutter/material.dart';

import 'package:whatsapp_app/requirements/colors.dart';
import 'package:whatsapp_app/requirements/contacts.dart';
import 'package:whatsapp_app/widget/chat_box.dart';
import 'package:whatsapp_app/screen/mobile_layout.dart';
import 'package:whatsapp_app/widget/mobile_search.dart';

class MobileChat extends StatelessWidget {
  const MobileChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: appBarColor,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MobileLayout(),
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
            );
          },
        ),
        centerTitle: false,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 10,
              backgroundImage: NetworkImage(
                'https://tse2.mm.bing.net/th?id=OIP.bVtJexUYKPRJIhpXjWLN2gHaH_&pid=Api&P=0&h=180'
              ),
            ),
            const SizedBox(
              width: 2.0,
            ),
            Text(
              info[0]['name'].toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.85,
            padding: const EdgeInsets.all(8.0),
            child: const Expanded(child:  ChatBox()),
          ),
          const MobSearchBar(),
        ],
      ),
    );
  }
}
