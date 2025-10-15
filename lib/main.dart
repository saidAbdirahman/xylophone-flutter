import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(){
    final player = AudioPlayer();
    player.play(AssetSource('note1.wav'));
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
                  final player = AudioPlayer();
                   player.play(AssetSource('note1.wav'));
                },
                child: Text("Song1"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow
                ),
                onPressed: (){
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
                },
                child: Text("Song2"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green
                ),
                onPressed: (){
                  final player = AudioPlayer();
                  player.play(AssetSource('note3.wav'));
                },
                child: Text("Song3"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue
                ),
                onPressed: (){
                  final player = AudioPlayer();
                  player.play(AssetSource('note4.wav'));
                },
                child: Text("Song4"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.teal
                ),
                onPressed: (){
                  final player = AudioPlayer();
                  player.play(AssetSource('note5.wav'));
                },
                child: Text("Song5"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan
                ),
                onPressed: (){
                  final player = AudioPlayer();
                  player.play(AssetSource('note6.wav'));
                },
                child: Text("Song6"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent
                ),
                onPressed: (){
                  final player = AudioPlayer();
                  player.play(AssetSource('note7.wav'));
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
