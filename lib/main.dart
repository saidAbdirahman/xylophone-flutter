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
              buildKey(Colors.teal, 'note2.wav'),
              buildKey(Colors.green, 'note3.wav'),
              buildKey(Colors.red, 'note4.wav'),
              buildKey(Colors.white30, 'note5.wav'),
              buildKey(Colors.deepPurpleAccent, 'note6.wav'),
              buildKey(Colors.yellow, 'note7.wav'),

            ],
          ),
        ),
      ),
    );
  }
}
