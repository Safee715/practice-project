import 'package:counterapp/data/constants.dart';
import 'package:counterapp/widgets/container_widget.dart';
import 'package:counterapp/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list=[KValue.basiclayout,KValue.keyconcepts,KValue.basicui,KValue.fixbugs,];

    return Padding(
      padding:EdgeInsets.symmetric(vertical: 10.0),
      child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              HeroWidget(title: 'Flutter Map',),...
              List.generate(list.length, (index) {

               return ContainerWidget(title:list.elementAt(index), description: 'Hello hi i am safee ');
              },
              ),







            ],
            ),
          ),
        ),
      ),
    )   ;
  }
}
