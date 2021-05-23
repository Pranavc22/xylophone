import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int no) {
    final player = AudioCache();
    player.play('note$no.wav');
  }

  Expanded buildKey({int keyNo, Color color}) {
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(backgroundColor: color),
          onPressed: () {
            playSound(keyNo);
          },
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(keyNo: 1, color: Colors.red),
              buildKey(keyNo: 2, color: Colors.orange),
              buildKey(keyNo: 3, color: Colors.yellow),
              buildKey(keyNo: 4, color: Colors.green),
              buildKey(keyNo: 5, color: Colors.blue),
              buildKey(keyNo: 6, color: Colors.indigo),
              buildKey(keyNo: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
