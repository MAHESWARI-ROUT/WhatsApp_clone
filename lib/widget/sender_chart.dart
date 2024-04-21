
import 'package:flutter/material.dart';

import 'package:whatsapp_app/requirements/colors.dart';
class SenderChat extends StatelessWidget {
  final String message;
  final String date;
  const SenderChat({super.key, required this.message, required this.date});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.height -45),
          child: Card(
            color: senderMessageColor,
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
                  right:14,
                 
                  top: 25,
                  child: Row(
                    children: [
                      Text(
                        date,
                        style: const TextStyle(color: textColor, fontSize: 13),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
