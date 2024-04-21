import 'package:flutter/material.dart';


class WebAppBar extends StatelessWidget{
  const WebAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
                  leading: Builder(builder: (BuildContext context) {
                    return IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.account_circle),
                      
                      
                    );
                  }),
                       
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.group),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_comment_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.wifi_channel_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.circle_notifications_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    ),
                  ],
                );
  }
} 