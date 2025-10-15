import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(String sound){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            
            children: [
              Container(
                width: 1000,
                height: 70,
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
              Container(
                width: 1000,
                height: 90,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow
                  ),
                  onPressed: (){
                    playSound('note2.wav');
                  },
                  child: Text("Song2"),
                ),
              ),
              Container(
                width: 1000,
                height: 90,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green
                  ),
                  onPressed: (){
                    playSound('note3.wav');
                  },
                  child: Text("Song3"),
                ),
              ),
              Container(
                width: 1000,
                height: 90,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue
                  ),
                  onPressed: (){
                    playSound('note4.wav');
                  },
                  child: Text("Song4"),
                ),
              ),
              Container(
                width: 1000,
                height: 70,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.teal
                  ),
                  onPressed: (){
                    playSound('note5.wav');
                  },
                  child: Text("Song5"),
                ),
              ),
              Container(
                width: 1000,
                height: 70,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.cyan
                  ),
                  onPressed: (){
                    playSound('note6.wav');
                  },
                  child: Text("Song6"),
                ),
              ),
              Container(
                width: 1000,
                height: 94,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent
                  ),
                  onPressed: (){
                    playSound('note7.wav');
                  },
                  child: Text("Song7"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
