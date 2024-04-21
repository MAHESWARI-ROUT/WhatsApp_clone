import 'package:flutter/material.dart';
import 'package:whatsapp_app/requirements/contacts.dart';
import 'package:whatsapp_app/requirements/colors.dart';
import 'package:whatsapp_app/widget/mobile_chat.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MobileChat(),
                ),
              );
            },
            child: ListTile(
              title: Text(
                info[index]['name'].toString(),
                style: const TextStyle(fontSize: 15, color: textColor),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text(
                  info[index]['message'].toString(),
                  style: const TextStyle(fontSize: 8, color: Colors.grey),
                ),
              ),
              leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://tse2.mm.bing.net/th?id=OIP.bVtJexUYKPRJIhpXjWLN2gHaH_&pid=Api&P=0&h=180'),
                  radius: 30),
              trailing: Text(
                info[index]['time'].toString(),
                style: const TextStyle(fontSize: 10, color: messageColor),
              ),
            ),
          );
        },
      ),
    );
  }
}
