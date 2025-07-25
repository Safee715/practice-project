import 'package:counterapp/data/constants.dart';
import 'package:counterapp/data/notifiers.dart';
import 'package:counterapp/pages/welcome_page.dart';
import 'package:counterapp/widgets/widget_tree.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {

   initthememode();
super.initState();
  }
  void initthememode () async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? repeat = prefs.getBool(KConstants.thememodekey);
    isdarkmodeNotifier.value=repeat??false;

  }
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isdarkmodeNotifier, builder: (context, isDarkMode, child)
      {
        return MaterialApp(debugShowCheckedModeBanner: false,

            theme:ThemeData(brightness:isDarkMode? Brightness.dark:Brightness.light) ,
            home: CounterApp());
      }
      ,);
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {


  @override
  Widget build(BuildContext context) {
    return WelcomePage();
  }
}
