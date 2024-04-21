
import 'package:flutter/material.dart';

import 'package:whatsapp_app/requirements/colors.dart';

class MyChat extends StatelessWidget {
  final String message;
  final String date;
  const MyChat({super.key, required this.message, required this.date});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerRight,
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.height - 25),
          child: Card(
            color: messageColor,
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      top: 5, bottom: 20, start: 10, end: 30),
                  child: Text(
                    message,
                    style: const TextStyle(color: textColor, fontSize: 15),
                  ),
                ),
                Positioned(
                  bottom: 6,
                  right: 0.01,
                  top: 25,
                  child: Row(
                    children: [
                      Text(
                        date,
                        style: const TextStyle(color: textColor, fontSize: 12),
                      ),
                      const SizedBox(
                        width: 0.001,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.done_all,
                          size: 15,
                          
                        ),
                      )
                    ],
                  ),
                ),
                ]
                 
            ),
          ),
        ),
      ),
    );
  }
}
