import 'package:flutter/material.dart';
import 'package:whatsapp_app/requirements/colors.dart';
class WebChatTypeBar extends StatelessWidget {
  const WebChatTypeBar({super.key});
  

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
                  padding: const EdgeInsets.all(2),
                  height: screenHeight * 0.05,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.emoji_emotions)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                      const Expanded(
                        child: SizedBox(
                          
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: searchBarColor,
                              
                              hintText: 'Type a message',
                              hintStyle: TextStyle(fontSize: 10),
                          
                              border: OutlineInputBorder(

                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mic),
                      ),
                    ],
                  ),
                )
              ;
  }
}