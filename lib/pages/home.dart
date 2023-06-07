import 'package:eflutter_app/pages/cart.dart';
import 'package:eflutter_app/pages/user-info.dart';
import 'package:flutter/material.dart';
import 'index.dart';
import 'search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: const [Index(), Search(), Cart(), UserInfo()],
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (value) {
            setState(() {
              index = value;
            });
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.umbrella), label: 'User'),
            NavigationDestination(icon: Icon(Icons.pageview), label: 'Cart'),
            NavigationDestination(icon: Icon(Icons.undo), label: 'Account')
          ]),
    );
  }
}
