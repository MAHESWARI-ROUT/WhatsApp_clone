import 'package:flutter/material.dart';

import 'package:whatsapp_app/navigation_bar/navigation.dart';
import 'package:whatsapp_app/requirements/colors.dart';
import 'package:whatsapp_app/widget/contact_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
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
//Older form of whatsapp
          /* bottom: const TabBar(
            
            labelColor: tabColor,
            indicatorColor: tabColor,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chats',
              ),
              Tab(
                icon: Icon(Icons.update),
                text: 'Updates',
              ),
              Tab(
                icon: Icon(Icons.group),
                text: 'Communities',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'Calls',
              ),
            ],
          ),*/
          //Latest form of Whatsapp
        ),
        body: Column(
          children: [
            Container(
              height: screenHeight * 0.05,
              padding: const EdgeInsets.all(1),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: searchBarColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  icon: Icon(Icons.search),
                  hintText: 'Search...',
                  hintStyle: TextStyle(fontSize: 10),
                ),
              ),
            ),
            
            const ContactList(),
            const NavigationTab(),
          ],
          
        ),
        floatingActionButton: Padding(
         
           padding: const EdgeInsets.only(bottom: 70),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: tabColor,
            child: const Icon(
              Icons.comment,
              color: Colors.white,
              
            ),
          ),
        ),
      ),
    );
  }
}
