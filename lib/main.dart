import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(String sound){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }

  Expanded buildKey(color, String songName){
    print(color);
    print("object");
    return Expanded(
      child: TextButton(

        style: TextButton.styleFrom(
            backgroundColor: color
        ),
        onPressed: (){
          playSound(songName);
        },
        child: Text("Song1"),
      ),
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
              buildKey(Colors.blue, 'note1.wav'),
              // buildKey(),
              // buildKey(),
              // buildKey(),
              // buildKey(),
              // buildKey(),
              // buildKey(),

            ],
          ),
        ),
      ),
    );
  }
}
