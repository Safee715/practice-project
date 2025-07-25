import 'dart:developer';
import 'package:counterapp/data/classes/activity_class.dart';
import 'package:counterapp/widgets/hero_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:flutter/src/widgets/framework.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  late Activity activity;
  @override

  void initState() {
    // TODO: implement initState
    getdata();
    super.initState();
  }
  Future  getdata() async
  {var url =
  Uri.https('bored-api.appbrewery.com', '/random');

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
   return Activity.fromJson(convert.jsonDecode(response.body) as Map<String, dynamic>);
   log(activity.activity);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(future: getdata(), builder: (context, snapshot) {
        Widget widget;
        if(snapshot.connectionState==ConnectionState.waiting)
          {
            widget= CircularProgressIndicator();
          }
        else if(snapshot.hasData)
        {Activity activity=snapshot.data;
        widget= Padding(padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
        children: [
        HeroWidget(title: 'Course'),
          Text(activity.activity),
          Text(activity.accessibility),
          Text(activity.duration),
          Text(activity.type),
        ],
        ),
        );
        }
        else
          {
            widget= Center(child: Text('Error fetching APi'),);
          }
        return widget;
      },)
    );
  }
}
