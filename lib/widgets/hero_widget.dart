import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key,required this.title,});
final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(tag: 'hero1',
          child: ClipRRect(
            borderRadius:   BorderRadius.circular(20.0),
            child: Image.asset('assets/images/background.jpg',),
          ),
        ),
        Text(title,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50.0,color: Colors.white),)
      ],
    );
  }
}
