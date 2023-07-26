import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(
          backgroundColor: Colors.teal[700],
          foregroundColor: Colors.black,
          title: const Text(
            'Test your Musical Skills',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildExpanded(sndNum: 1, clr: Colors.red),
                buildExpanded(sndNum: 2, clr: Colors.orange),
                buildExpanded(sndNum: 3, clr: Colors.yellow),
                buildExpanded(sndNum: 4, clr: Colors.green),
                buildExpanded(sndNum: 5, clr: Colors.blue),
                buildExpanded(sndNum: 6, clr: Colors.pink),
                buildExpanded(sndNum: 7, clr: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildExpanded({required int sndNum, required Color clr}) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          playSound(sndNum);
        },
        enableFeedback: false,
        color: clr,
      ),
    );
  }

  void playSound(int soundNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNum.wav'));
  }
}
