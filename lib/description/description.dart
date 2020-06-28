import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Um presente inteligente.',
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.3, fontSize: 60)),
          SizedBox(
            height: 30,
          ),
          Text(
              "Já imaginou quais são as palavras mais importantes numa conversa com alguém? O que vocês mais querem dizer um para o outro? Descubra e presenteie!",
              softWrap: true,
              style: TextStyle(fontSize: 16, height: 1.7))
        ],
      ),
    );
  }
}
