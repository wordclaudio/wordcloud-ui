import 'dart:async';
import 'package:wordcloud_web_app/requests/requests.dart';
import 'package:flutter/material.dart';

class ResultView extends StatefulWidget {
  final imageId;
  ResultView({Key key, this.imageId}) : super(key: key);

  @override
  _ResultViewState createState() => _ResultViewState(imageId);
}

class _ResultViewState extends State<ResultView> {
  final imageId;

  Widget image;

  void initState() {
    image = new CircularProgressIndicator();
    super.initState();
    getImage();
  }

  _ResultViewState(this.imageId);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[Center(child: this.image)]);
  }

  getImage() {
    setState(() {
      this.image = downloadImage(this.imageId);
    });
  }
}
