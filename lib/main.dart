import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: AppBar(title: const Text('Test you skills'), ),
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
            // child: TextButton(
            //   onPressed: () {
            //     final player = AudioPlayer();
            //     // player.setSourceAsset('note4.wav');
            //     player.play(AssetSource('note7.wav'));
            //     // print('button got pressed');
            //
            //     // player.loadAsset(AssetSource('note1.wav'));
            //     // Null;
            //     // await player.play('note1.wav');
            //     // player.play(Source : );
            //     // await player.setSource(
            //     //   AssetSource('note1.wav'),
            //   },
            //   style: const ButtonStyle(
            //     enableFeedback: false, // Disable the sound effect
            //   ),
            //   child: const Text('click me'),
            // ),
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
        // hoverElevation: 100.0,
        // elevation: 30.0,
        // animationDuration: const Duration(seconds: 1),
        enableFeedback: false, // Disable the sound effect
        color: clr,

        // child: const Text('Press me'),
      ),
    );
  }

  void playSound(int soundNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNum.wav'));
  }
}
