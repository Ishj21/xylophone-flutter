import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playN(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildkey({Color color, int soundNum}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playN(soundNum);
        },
        color: color,
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, soundNum: 1),
              buildkey(color: Colors.orange, soundNum: 2),
              buildkey(color: Colors.yellow, soundNum: 3),
              buildkey(color: Colors.green, soundNum: 4),
              buildkey(color: Colors.teal, soundNum: 5),
              buildkey(color: Colors.blue, soundNum: 6),
              buildkey(color: Colors.purple, soundNum: 7),
              buildKey(color: Colors.cyan, soundNum: 8),
              buildKey(color: Colors.pink, soundNum: 9),
              buildKey(color: Colors.lime, soundNum: 10),
              buildKey(color: Colors.black, soundNum: 11),
              buildKey(color: Colors.amber, soundNum:12),
            ],
          ),
        ),
      ),
    );
  }
}
