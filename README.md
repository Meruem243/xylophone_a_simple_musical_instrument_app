# xylophone_a_simple_musical_instrument_app

- Xylophone - A Simple Musical Instrument App
  Practice App that allows to play sounds

## Things that will be covered after completing this app

* **What are Flutter & Dart Packages?**

open source libraries of code/functions which can be implemented with minimum effort to add libraries and prebuilt functions

to add packages go to yaml file : using audio player package as eg : 

    dependencies:

        flutter: 

            sdk: flutter

        audioplayers: ^4.1.0`

then in main.dart -> `import 'package:audioplayers/audioplayers.dart';`

* **How to Play Sound Across Platforms**

using flutter package audioplayers: ^4.1.0 to play sound

    final player = AudioPlayer(); 

    player.play(AssetSource('note1.wav'));

    enableFeedback: false, // to disable the sound effect of button itself

- How to Play Multiple Sounds 
- Dart Functions - Part 2
- Updating the UI of Our App
- Dart Functions - Part 3
- Dart Functions Challenge
- Refactoring Our App
- Dart Arrow Functions