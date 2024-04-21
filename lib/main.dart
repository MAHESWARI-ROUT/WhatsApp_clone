import 'package:flutter/material.dart';
import 'package:whatsapp_app/requirements/colors.dart';
import 'package:whatsapp_app/responsive_page/responsive_layout.dart';
import 'package:whatsapp_app/screen/mobile_layout.dart';
import 'package:whatsapp_app/screen/web_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        
      ),
      home: const ResponsiveLayout(
        mobileScreen: MobileLayout() ,
        webScreen: WebLayout(),
      ),
    );
  }
}
