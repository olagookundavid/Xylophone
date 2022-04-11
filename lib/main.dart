import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void audioplayer(int tileno) {
    final player = AudioCache();
    player.play('note$tileno.wav');
  }

  Expanded buttonbuilder(int tileno, Color color) {
    return Expanded(
      child: TextButton(
        child: Container(color: color,height: 100, width: 600,
          child: Center(
            child: Text(
              'Tile $tileno', style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        onPressed: () {
          audioplayer(tileno);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buttonbuilder(1, Colors.red),
              buttonbuilder(2, Colors.blue),
              buttonbuilder(3, Colors.teal),
              buttonbuilder(4, Colors.purple),
              buttonbuilder(5, Colors.orange),
              buttonbuilder(6, Colors.black),
              buttonbuilder(7, Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
