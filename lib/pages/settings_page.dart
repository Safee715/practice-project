import 'package:counterapp/pages/course_page.dart';
import 'package:counterapp/pages/expanded_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});
  final String title;
  @override
  State<SettingsPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0;
  String? itemNo;
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent,));

    return Scaffold(
extendBodyBehindAppBar: true,

      appBar:
      AppBar(scrolledUnderElevation: 0,title: Text(widget.title),backgroundColor: Colors.teal,),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ElevatedButton(onPressed: ()
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder:(context)
                    {
                      return CoursePage();
                    },
                    ),
                  );
                },

                  child:Text("Courses page"),
                ),
                ElevatedButton(onPressed: ()
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder:(context)
                  {
                  return ExpandedPage();
                  },
                  ),
                  );
                  },

                  child:Text("Open Expanded Page"),
                ),
                TextField(
                  controller: controller,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                Text(controller.text),
                Checkbox.adaptive(
                  tristate: true,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
                CheckboxListTile.adaptive(
                  title: Text('Click Me'),
                  tristate: true,
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
                Switch.adaptive(
                  value: isSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
                SwitchListTile.adaptive(
                  value: isSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
                Slider(
                  max: 100.0,
                  divisions: 5,
                  value: sliderValue,
                  onChanged: (value) {
                    setState(() {
                      sliderValue = value;
                    });
                    debugPrint('$value');
                  },
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint('image clicked');
                  },
                  child: Image.asset(
                    'assets/images/WhatsApp Image 2025-07-17 at 20.34.22_7b3c6348.jpg',
                  ),
                ),
                DropdownButton(
                  value: itemNo,
                  items: [
                    DropdownMenuItem(value: 'e1', child: Text('Element1')),
                    DropdownMenuItem(value: 'e2', child: Text('Element2')),
                    DropdownMenuItem(value: 'e3', child: Text('Element1')),
                  ],
        
                  onChanged: (String? value) {
                    setState(() {
                      itemNo = value;
                    });
                  },
                ),
                ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('snackBar'),
                ),
                );
        
                }, child: Text('Open sNACK BAR'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
