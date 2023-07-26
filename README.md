# xylophone_a_simple_musical_instrument_app

Xylophone - A Simple Musical Instrument App.
  Practice App that allows to play sounds

## Things that will be covered after completing this app

* #### **What are Flutter & Dart Packages?**

open source libraries of code/functions which can be implemented with minimum effort to add libraries and prebuilt functions

to add packages go to **yaml file** : using audio player package as eg : 

    dependencies:

        flutter: 

            sdk: flutter

        audioplayers: ^4.1.0`

then in **main.dart** -> `import 'package:audioplayers/audioplayers.dart';`


* #### **How to Play Sound Across Platforms**

using flutter package audioplayers: ^4.1.0 to play sound

    final player = AudioPlayer(); 

    player.play(AssetSource('note1.wav'));

    enableFeedback: false, // to disable the sound effect of button itself


* #### **How to Play Multiple Sounds** 

Added parametric function for playing audio sounds

Added more buttons & function to play multiple sounds on multiple buttons & added app bar

    void playSound(int soundNum) {

      final player = AudioPlayer();

      player.play(AssetSource('note$soundNum.wav'));

    }



* #### **Refactoring And adding return type function**


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