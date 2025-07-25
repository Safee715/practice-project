import 'package:counterapp/data/notifiers.dart';
import 'package:counterapp/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20.0),
    child: SingleChildScrollView(
      child: Column(children: [
        ListTile(title: Text('Logout'),onTap: ()
          {selectedpageNotifier.value=0;
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WelcomePage();
                },
              ),
            );
      
          },),
        CircleAvatar(
          radius: 70.0,
          backgroundImage: AssetImage('assets/images/WhatsApp Image 2025-07-17 at 20.34.22_7b3c6348.jpg'),

        ),

      ],
      ),
    ),
    );
  }
}
