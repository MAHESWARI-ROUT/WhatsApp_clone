
import 'package:flutter/material.dart';
import 'package:whatsapp_app/requirements/colors.dart';
class WebSearching extends StatelessWidget {
  const WebSearching({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
     
      padding: EdgeInsetsDirectional.only(start: 3.0,top: 8.0,bottom: 8.0,end:13.0),
      child: SizedBox(
        
      height: 30,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            prefixIcon: Icon(Icons.search),
            hintText: 'Search....',
            hintStyle: TextStyle(fontSize: 10),
            
            border: OutlineInputBorder(
              
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}