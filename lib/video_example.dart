import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:goatbo/story_page.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: VideoExample(),

      routes: {
        StoryPage.story: (ctx) => StoryPage(),

      },
    );
  }
}
class VideoExample extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<VideoExample> {
  VideoPlayerController playerController;
  VoidCallback listener;
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }
  @override
  void initState() {
    createVideo();
    initPlayer();
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.asset("assets/Door.mp4")
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        playerController.initialize();
        playerController.play();
      }
    }

  }

  @override
  void deactivate() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }

  @override
  void dispose() {
    playerController.dispose();
    initPlayer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('Goat Bo Avenger Scary Adventure'),
//      ),
      body: Stack(
        children: <Widget>[
          Container(
              child: VideoPlayer(
            playerController,
          )),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(
                'Goat Bo the Avenger',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                elevation: 10,
                child: Text('Press here to start your adventure'),
                textColor: Colors.white,
                onPressed: () {
                  playerController.pause();
                  Navigator.of(context).pushReplacementNamed(StoryPage.story);
                  audioCache.play('Scary.wav');
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
