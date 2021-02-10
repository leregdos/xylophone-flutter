import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playerFunction(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            // ignore: deprecated_member_use
            child: Column(
              children: [
                FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playerFunction(1);
                  },
                ),
                FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playerFunction(2);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playerFunction(3);
                  },
                ),
                FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playerFunction(4);
                  },
                ),
                FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playerFunction(5);
                  },
                ),
                FlatButton(
                  color: Colors.indigo,
                  onPressed: () {
                    playerFunction(6);
                  },
                ),
                FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    playerFunction(7);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
