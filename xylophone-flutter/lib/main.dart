import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buildKey(colorList: [
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green,
              Colors.teal,
              Colors.blue,
              Colors.purple
            ]),
          ),
        ),
      ),
    );
  }

  void playSound({int soundNumber = 1}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  List<Expanded> buildKey({List<Color> colorList}) {
    var buttons = List.generate(colorList.length, (index) {
      return Expanded(
        child: FlatButton(
          color: colorList[index],
          child: null,
          onPressed: () {
            playSound(soundNumber: (index + 1));
          },
        ),
      );
    });

    return buttons;
  }
}
