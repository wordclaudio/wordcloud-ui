import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  final bool backButton;
  NavigationBar({bool backButton}) : this.backButton = backButton;

  @override
  _NavigationBarState createState() => _NavigationBarState(backButton);
}

class _NavigationBarState extends State<NavigationBar> {
  final bool backButton;
  _NavigationBarState(this.backButton);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
                height: 1000,
                width: 100,
                child: Image.asset(
                  'assets/images/logo.jpeg',
                )),
          ],
        ));
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200));
  }
}
