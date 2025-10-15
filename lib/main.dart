import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(sound){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(

                style: TextButton.styleFrom(
                  backgroundColor: Colors.red
                ),
                onPressed: (){
                  playSound('note1.wav');
                },
                child: Text("Song1"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow
                ),
                onPressed: (){
                  playSound('note2.wav');
                },
                child: Text("Song2"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green
                ),
                onPressed: (){
                  playSound('note3.wav');
                },
                child: Text("Song3"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue
                ),
                onPressed: (){
                  playSound('note4.wav');
                },
                child: Text("Song4"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.teal
                ),
                onPressed: (){
                  playSound('note5.wav');
                },
                child: Text("Song5"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan
                ),
                onPressed: (){
                  playSound('note6.wav');
                },
                child: Text("Song6"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent
                ),
                onPressed: (){
                  playSound('note7.wav');
                },
                child: Text("Song7"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
