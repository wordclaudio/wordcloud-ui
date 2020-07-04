import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Description extends StatelessWidget {
  const Description({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Align(
            child: AutoSizeText(
              'Um presente inteligente.',
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.3, fontSize: 60),
              maxLines: 2,
            ),
            alignment: Alignment.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Align(
            child: AutoSizeText(
              "Já imaginou quais são as palavras mais importantes numa conversa com alguém?\nO que vocês mais querem dizer um para o outro? Descubra e presenteie!",
              softWrap: true,
              style: TextStyle(fontSize: 16, height: 1.7),
              maxLines: 5,
              minFontSize: 5,
              maxFontSize: 20,
            ),
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}
