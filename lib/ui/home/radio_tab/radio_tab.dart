import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class RadioTab extends StatelessWidget {
 // const RadioTab({super.key});
  final player = AudioPlayer();                   // Create a player
  // final duration = player.setUrl(           // Load a URL
  // 'https://foo.com/bar.mp3');


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
          Column(
          children: [
          Image(
              image: AssetImage("assets/images/radio_image.png")),
            SizedBox(height: 70),
            Text(
              "إذاعة القرأن الكريم",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.skip_previous,color: Color(0xFFB7935F),),
                  iconSize: 35,
                  onPressed: () {
                    // Logic for skipping to previous song
                  },
                ),
                SizedBox(width: 30),
                IconButton(
                  icon: Icon(Icons.play_arrow,color: Color(0xFFB7935F),),
                  iconSize: 60,
                  onPressed: () {
                    // Logic for playing/pausing the song
                  },
                ),
                SizedBox(width: 30),
                IconButton(
                  icon: Icon(Icons.skip_next,color: Color(0xFFB7935F),),
                  iconSize: 35,
                  onPressed: () {
                    // Logic for skipping to next song
                  },
                ),
              ],
            ),
      ],
    ),],),

      ),
    );
  }
}
