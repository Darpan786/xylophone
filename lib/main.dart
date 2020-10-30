import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildkey(color: Colors.red, soundNumber: 1),
            buildkey(color: Colors.teal, soundNumber: 2),
            buildkey(color: Colors.green, soundNumber: 3),
            buildkey(color: Colors.yellow, soundNumber: 4),
            buildkey(color: Colors.white, soundNumber: 5),
            buildkey(color: Colors.grey, soundNumber: 6),
            buildkey(color: Colors.purple, soundNumber: 7)
          ],
        )),
      ),
    );
  }
}
