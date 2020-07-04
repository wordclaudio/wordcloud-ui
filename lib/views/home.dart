import 'package:flutter/material.dart';
import 'package:wordcloud_web_app/description/description.dart';
import 'package:wordcloud_web_app/buttons/start_button.dart';
import 'package:wordcloud_web_app/widgets/nav_bar/nav_bar.dart';
import 'package:wordcloud_web_app/centered_view/centered_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Description(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Align(
                    alignment: Alignment.center,
                    child: StartButton("Quero testar!"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
