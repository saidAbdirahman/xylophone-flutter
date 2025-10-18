import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(String sound){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }

  String buildKey(){
    Expanded(
      child: TextButton(

        style: TextButton.styleFrom(
            backgroundColor: Colors.red
        ),
        onPressed: (){
          playSound('note1.wav');
        },
        child: Text("Song1"),
      ),
    ),
    return 1;
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
              buildKey(),

            ],
          ),
        ),
      ),
    );
  }
}
