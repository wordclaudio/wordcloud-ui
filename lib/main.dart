import 'package:flutter/material.dart';
import 'package:wordcloud_web_app/views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word Claudio',
      theme: ThemeData(
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
      home: HomeView(),
    );
  }
}
