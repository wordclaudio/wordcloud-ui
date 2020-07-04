import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:wordcloud_web_app/buttons/upload_button.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
          Icon(Icons.person, size: 40, color: Colors.green),
          AutoSizeText(
            " Abra a conversa que deseja visualizar",
            minFontSize: 5,
            maxLines: 3,
            softWrap: true,
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
          AutoSizeText(
            " Clique em ",
            style: TextStyle(fontSize: 18),
          ),
          Icon(Icons.more_vert, size: 50, color: Colors.green),
          AutoSizeText(
            " e selecione ",
            style: TextStyle(fontSize: 18),
          ),
          AutoSizeText(
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
        widgetDescription: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Icon(
                Icons.save_alt,
                size: 30,
                color: Colors.green,
                textDirection: TextDirection.rtl,
              ),
              AutoSizeText(
                " Selecione ",
                minFontSize: 6,
              ),
              AutoSizeText(
                "Exportar Conversa ",
                style: TextStyle(fontWeight: FontWeight.w800),
                minFontSize: 8,
                softWrap: true,
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AutoSizeText(
                  "\nSalve o arquivo como preferir ",
                  minFontSize: 5,
                )
              ],
            ),
          ],
        ),
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
      renderNextBtn: AutoSizeText(
        "PRÓXIMO",
        style: TextStyle(color: Colors.black, fontSize: 5),
      ),
    ));
  }
}
