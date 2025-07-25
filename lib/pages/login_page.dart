import 'package:counterapp/widgets/hero_widget.dart';
import 'package:counterapp/widgets/widget_tree.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title,});

  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail=TextEditingController();
  TextEditingController controllerpPw=TextEditingController();
  String confirmed_Email='princesafee0@gmail.com';
  String confirmed_Password='safee.1234';


  @override
  // @override
//   void initState() {
// debugPrint('hi');
//     // TODO: implement initState
//     super.initState();
//   }
  void dispose() {
    // TODO: implement dispose
    controllerEmail.dispose();
    super.dispose();
  }
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: FractionallySizedBox(
              child: Column(
                children: [
                  HeroWidget(title: widget.title,
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    controller: controllerEmail,
                    decoration: InputDecoration(
                      hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                            ),
              
                    ),
                    onEditingComplete: () {
                      setState(() {});
                    },
                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    controller: controllerpPw,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
              
                    ),
                    onEditingComplete: () {
                      setState(() {});
                    },
                  ),
                  SizedBox(height: 20.0,),
                  FilledButton(onPressed: (){
                    onLoginPressed();
                  },style:FilledButton.styleFrom(minimumSize:Size(double.infinity, 40.0), ) ,
                    child:Text(widget.title),
                  ),
                  SizedBox(height: 50.0,)
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
  void onLoginPressed()
  { if (controllerEmail.text==confirmed_Email&&controllerpPw.text==confirmed_Password)
    {
        Navigator.pushAndRemoveUntil(

      context,
      MaterialPageRoute
      (
        builder: (context)
        {
           return WidgetTree();

        },
      ),
          (route) => false,
    );
  }

  }
}

