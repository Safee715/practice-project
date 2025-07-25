import 'package:counterapp/data/constants.dart';
import 'package:counterapp/data/notifiers.dart';
import 'package:counterapp/pages/home_page.dart';
import 'package:counterapp/pages/profile_page.dart';
import 'package:counterapp/pages/settings_page.dart';
import 'package:counterapp/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              isdarkmodeNotifier.value = !isdarkmodeNotifier.value;
              final SharedPreferences prefs=await SharedPreferences.getInstance()  ;
             await prefs.setBool(KConstants.thememodekey, isdarkmodeNotifier.value);
            },
            icon: ValueListenableBuilder(
              valueListenable: isdarkmodeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage(title: "Setting");
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedpageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
