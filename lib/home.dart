import 'package:flutter/material.dart';
import 'package:goatbo/main.dart';
import 'package:video_player/video_player.dart';

class VideoExample extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<VideoExample> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    createVideo();
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.asset("assets/House.mp4")
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
                  Route route =
                      MaterialPageRoute(builder: (context) => StoryPage());
                  Navigator.push(context, route);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
