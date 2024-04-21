import 'package:flutter/material.dart';

class NavigationTab extends StatelessWidget {
  const NavigationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.chat), label: 'Chat'),
        NavigationDestination(icon: Icon(Icons.update), label: 'Updates'),
        NavigationDestination(icon: Icon(Icons.group), label: 'Community'),
        NavigationDestination(icon: Icon(Icons.call), label: 'Call'),
      ],
    );
  }
}
