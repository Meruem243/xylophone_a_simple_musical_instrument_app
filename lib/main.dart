import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            child: MaterialButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note1.wav'));
              },
              enableFeedback: false, // Disable the sound effect
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text('Press me'),
            ),
          ),
        ),
      ),
    );
  }
}
