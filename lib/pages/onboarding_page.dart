import 'package:counterapp/pages/login_page.dart';
import 'package:counterapp/widgets/hero_widget.dart';
import 'package:counterapp/widgets/widget_tree.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage ({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [

                SizedBox(height: 20.0,),

                SizedBox(height: 10.0,),

                SizedBox(height: 20.0,),
                FilledButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage(title: 'Register',);
                      },
                    ),
                  );
                },style:FilledButton.styleFrom(minimumSize:Size(double.infinity, 40.0), ) ,
                  child:Text('Next'),
                ),
                SizedBox(height: 50.0,)
              ],
            ),
          ),
        ),
      ),

    );
  }

}

