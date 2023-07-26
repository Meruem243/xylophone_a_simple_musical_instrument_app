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
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      playSound(1);
                    },
                    // hoverElevation: 100.0,
                    // elevation: 30.0,
                    // animationDuration: const Duration(seconds: 1),
                    enableFeedback: false, // Disable the sound effect
                    color: Colors.red,

                    // child: const Text('Press me'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      playSound(2);
                    },
                    enableFeedback: false, // Disable the sound effect
                    color: Colors.blue,

                    // child: const Text('Press me'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      playSound(3);
                    },
                    enableFeedback: false, // Disable the sound effect
                    color: Colors.green,

                    // child: const Text('Press me'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      playSound(4);
                    },
                    enableFeedback: false, // Disable the sound effect
                    color: Colors.yellow,

                    // child: const Text('Press me'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      playSound(5);
                    },
                    enableFeedback: false, // Disable the sound effect
                    color: Colors.lightBlueAccent,

                    // child: const Text('Press me'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      playSound(6);
                    },
                    enableFeedback: false, // Disable the sound effect
                    color: Colors.pink[400],

                    // child: const Text('Press me'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      playSound(7);
                    },
                    enableFeedback: false, // Disable the sound effect
                    color: Colors.cyan[500],

                    // child: const Text('Press me'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playSound(int soundNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNum.wav'));
  }
}
