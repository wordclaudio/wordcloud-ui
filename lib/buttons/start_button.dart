import 'package:flutter/material.dart';
import 'package:wordcloud_web_app/views/tutorial.dart';

class StartButton extends StatelessWidget {
  final String title;
  StartButton(this.title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          child: Text(title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              )),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 31, 229, 146),
              borderRadius: BorderRadius.circular(5)),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TutorialPage()),
          );
        });
  }
}
