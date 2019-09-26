import 'package:flutter/material.dart';
import 'package:flutter_icons/feather.dart';
import 'package:furniture_app/services/text_to_speech.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:furniture_app/util/data.dart';
// import 'package:furniture_app/widgets/badge.dart';

class Details extends StatefulWidget {
  final title;
  final content;

  Details(
      {this.title,
      this.content =
          'This is a super duper long sample text and goes longer and longer, and even longer like wow it is still getting longer I don\'t think it will ever stop getting longer okay it is time to stop getting longer just kidding it is still getting longer and it will never stop getting longer because you don\'t choose the long life the long life chooses you'});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: widget.title,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                  onTap: () => TextToSpeech(
                          content: widget.content, language: Language.english)
                      .playAudio(),
                  child: Icon(Feather.getIconData('play'))),
            )
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  widget.content,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Helvetica",
                      fontWeight: FontWeight.normal,
                      height: 1.5),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
