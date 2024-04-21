import 'package:flutter/material.dart';

import 'package:whatsapp_app/requirements/colors.dart';

class MobSearchBar extends StatelessWidget {
  const MobSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(2.0),
      
      child:   Row(
        children: [
          Expanded(
            child:  SizedBox(
              width: 30,height: 30,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: mobileChatBoxColor,
                    prefixIcon: Icon(Icons.emoji_emotions_outlined,color:  Colors.grey,),
                    hintText: 'Message',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    suffixIcon: Padding(
                      
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.attach_file,size: 16,color:  Colors.grey,),
                          SizedBox(width: 2,),
                          Icon(Icons.currency_rupee_sharp,size: 16,color:  Colors.grey,),
                          SizedBox(width: 2,),
                          Icon(Icons.camera_alt,size: 16,color:  Colors.grey,),
                        ],
                      ),
                      
                    ), contentPadding:  EdgeInsets.all(2.0),
                    ),
              ),
            ),
          ),
          SizedBox(
            width: 1.0,
          ),
          Icon(Icons.mic_rounded,color:  Colors.grey,),
        ],
      ),
    );
  }
}
