import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:wordcloud_web_app/views/tutorial.dart';

class StartButton extends StatelessWidget {
  final String title;
  StartButton(this.title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.025),
          child: AutoSizeText(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
            maxLines: 2,
            minFontSize: 10,
            maxFontSize: 20,
          ),
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
