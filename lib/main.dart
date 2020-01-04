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
            children: <Widget>[
              Expanded(child: AudioPlayer(1, Colors.red)),
              Expanded(child: AudioPlayer(2, Colors.orange)),
              Expanded(child: AudioPlayer(3, Colors.yellow)),
              Expanded(child: AudioPlayer(4, Colors.green)),
              Expanded(child: AudioPlayer(5, Colors.teal)),
              Expanded(child: AudioPlayer(6, Colors.blue)),
              Expanded(child: AudioPlayer(7, Colors.purple)),
            ],
          ),
        ),
      ),
    );
  }
}

class AudioPlayer extends StatelessWidget {
  final int number;
  final Color color;

  AudioPlayer(this.number, this.color);

  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.color,
      child: InkWell(
        onTap: () => player.play('note$number.wav'),
        enableFeedback: false,
      ),
    );
  }
}
