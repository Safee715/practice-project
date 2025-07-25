import 'package:counterapp/pages/login_page.dart';
import 'package:counterapp/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(backgroundColor: Colors.teal,),

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: FractionallySizedBox(
                child: Column(mainAxisSize:  MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Center(child: Lottie.asset('assets/lotties/welcome.json',height: 200.0)),
                    FittedBox(child: Text('Flutter Map',style: TextStyle(letterSpacing: 50,fontSize: 100.0,fontWeight: FontWeight.bold,fontFamily: 'Times new Roman'),
                    ),
                    ),
                    SizedBox(height: 20.0,),
                
                    FilledButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return OnboardingPage();
                          },
                        ),
                      );
                    },style:FilledButton.styleFrom(minimumSize:Size(double.infinity, 40.0), ) ,
                      child:Text('Get Started'),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginPage(title: 'Login',);
                          },
                        ),
                      );
                    },style:FilledButton.styleFrom(minimumSize:Size(double.infinity, 40.0), ) ,
                      child:Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
