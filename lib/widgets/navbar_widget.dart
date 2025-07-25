
import 'package:counterapp/data/notifiers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';



class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: selectedpageNotifier,
      builder: (context,selectedPage,child)
      {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int value)
          {    selectedpageNotifier.value=value;    },selectedIndex: selectedPage,
        );
      },
    );
  }
}
