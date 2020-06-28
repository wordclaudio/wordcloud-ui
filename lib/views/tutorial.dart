import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:wordcloud_web_app/buttons/upload_button.dart';
import 'package:intro_slider/intro_slider.dart';

class TutorialPage extends StatefulWidget {
  TutorialPage({Key key}) : super(key: key);

  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        widgetTitle: Text(
          "Exportando Sua Conversa",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
        maxLineTitle: 1,
        widgetDescription:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Icon(Icons.person, size: 50, color: Colors.green),
          Text(
            " Abra a conversa que deseja visualizar",
            style: TextStyle(fontSize: 18),
          ),
        ]),
        pathImage: "",
        backgroundColor: Colors.white10,
      ),
    );
    slides.add(
      new Slide(
        widgetTitle: Text(
          "Exportando Sua Conversa",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
        maxLineTitle: 1,
        widgetDescription:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            " Clique em ",
            style: TextStyle(fontSize: 18),
          ),
          Icon(Icons.more_vert, size: 50, color: Colors.green),
          Text(
            " e selecione ",
            style: TextStyle(fontSize: 18),
          ),
          Text(
            "Mais",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          )
        ]),
        pathImage: "",
        backgroundColor: Colors.white10,
      ),
    );
    slides.add(
      new Slide(
        widgetTitle: Text(
          "Exportando Sua Conversa",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
        maxLineTitle: 1,
        widgetDescription:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Icon(
            Icons.save_alt,
            size: 30,
            color: Colors.green,
            textDirection: TextDirection.rtl,
          ),
          Text(
            " Selecione ",
            style: TextStyle(fontSize: 18),
          ),
          Text(
            "Exportar Conversa ",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          Text(
            "e salve o arquivo como preferir ",
            style: TextStyle(fontSize: 18),
          )
        ]),
        backgroundColor: Colors.white10,
        pathImage: "",
      ),
    );
    slides.add(
      new Slide(
        widgetTitle: Text(
          "Enviando Sua Conversa",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
        maxLineTitle: 1,
        widgetDescription: UploadButton(),
        backgroundColor: Colors.white10,
        pathImage: "",
      ),
    );
  }

  void onDonePress() {
    // Do what you want
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
      styleNameSkipBtn: TextStyle(color: Colors.black),
      nameSkipBtn: "PULAR",
      renderNextBtn: Text("PRÓXIMO", style: TextStyle(color: Colors.black)),
    ));
  }
}
