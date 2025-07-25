import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children:[
          Row(children: [
            Expanded(
              child: Container(color: Colors.teal,height: 20.0,
              ),
            ),
            Flexible(
              child: Container(color: Colors.yellow,height: 20.0,
              ),
            ),
          ],),
          Divider(),
          Row(children: [
            Flexible(flex: 4,
              child: Container(color: Colors.teal,height: 20.0,
              ),
            ),
            Expanded(
              child: Container(color: Colors.yellow,height: 20.0,
              ),
            ),
          ],),
        ],
        
        
        ),
      ),

    );
  }
}
