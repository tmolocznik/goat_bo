import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'video_example.dart';
import 'story_brain.dart';

//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData.dark(),
//      home: VideoExample(),
//    );
//  }
//}

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  bool _visible = true;
  String image = 'images/box.jpg';
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Stack(
            children: <Widget>[
              // Max Size
              AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 2500),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.7), BlendMode.dstATop),
                      image: AssetImage(image),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(storyBrain.getStory(),
                      style: TextStyle(fontSize: 25.0)),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            setState(() {
                              storyBrain.nextStory(1);
                              if (storyBrain.getStoryNumber() == 0) {
                                image = 'images/box.jpg';
                                advancedPlayer.stop();
                              } else if (storyBrain.getStoryNumber() == 1) {
                                image = 'images/goat.png';
                                audioCache.play('triumph.wav');
                              } else if (storyBrain.getStoryNumber() == 2) {
                                image = 'images/nasty.jpg';
                              } else if (storyBrain.getStoryNumber() == 3) {
                                image = 'images/spaghetti.png';
                                audioCache.play('evil_laugh.wav');
                              } else if (storyBrain.getStoryNumber() == 5) {
                                image = 'images/spfloor.jpeg';
                              } else if (storyBrain.getStoryNumber() == 7) {
                                image = 'images/path.jpeg';
                                audioCache.play('creepy-background.wav');
                                _visible = !_visible;
                              } else if (storyBrain.getStoryNumber() == 8) {
                                image = 'images/sp_light.jpg';
                                _visible = !_visible;
                                advancedPlayer.stop();
                                audioCache.play('shooting_star.wav');
                              } else if (storyBrain.getStoryNumber() == 9) {
                                image = 'images/door.jpg';
                                audioCache.play('creaking_door.wav');
                              } else if (storyBrain.getStoryNumber() == 11) {
                                image = 'images/super_fighters.png';
                                // audioCache.play('creaking_door.wav');
                                audioCache.play('applause.wav');
                              } else if (storyBrain.getStoryNumber() == 12) {
                                image = 'images/darkroom.jpg';
                                audioCache.play('Female Scream.wav');
                              } else if (storyBrain.getStoryNumber() == 13) {
                                image = 'images/dreams.jpg';
                                audioCache.play('demon_girls.wav');
                              } else if (storyBrain.getStoryNumber() == 14) {
                                image = 'images/pirates_pic.png';
                              } else if (storyBrain.getStoryNumber() == 15) {
                                image = 'images/bombs.png';
                                audioCache.play('bomb.wav');
                              } else if (storyBrain.getStoryNumber() == 16) {
                                image = 'images/nasty.jpg';
                                audioCache.play('Female Scream.wav');
                              } else {}
                            });
                          },
                          color: Colors.red,
                          child: Text(
                            storyBrain.getChoice1(),
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 80,
                        child: Visibility(
                          visible: storyBrain.buttonShouldBeVisible(),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {
                              setState(() {
                                storyBrain.nextStory(2);

                                if (storyBrain.getStoryNumber() == 1) {
                                  image = 'images/goat.png';
                                } else if (storyBrain.getStoryNumber() == 0) {
                                  image = 'images/box.jpg';
                                } else if (storyBrain.getStoryNumber() == 1) {
                                  image = 'images/spaghetti.png';
                                } else if (storyBrain.getStoryNumber() == 2) {
                                  image = 'images/manor.jpg';
                                  audioCache.play('evil_laugh.wav');
                                } else if (storyBrain.getStoryNumber() == 3) {
                                  image = 'images/spaghetti.png';
                                  _visible = !_visible;
                                  advancedPlayer.stop();
                                } else if (storyBrain.getStoryNumber() == 4) {

                                } else if (storyBrain.getStoryNumber() == 5) {
                                  image = 'images/spfloor.jpeg';
                                  audioCache.play('cheer.wav');
                                } else if (storyBrain.getStoryNumber() == 7) {
                                  image = 'images/spfloor.jpeg';
                                  // advancedPlayer.stop();
                                } else if (storyBrain.getStoryNumber() == 8) {
                                  image = 'images/door.jpg';
                                  audioCache.play('creaking_door.wav');
                                } else if (storyBrain.getStoryNumber() == 9) {
                                  image = 'images/door.jpg';
                                } else if (storyBrain.getStoryNumber() == 10) {
                                  image = 'images/box.jpg';
                                } else if (storyBrain.getStoryNumber() == 14) {
                                  image = 'images/pirates_pic.png';
                                  audioCache.play('pirates.wav');
                                } else if (storyBrain.getStoryNumber() == 15) {
                                  image = 'images/box.jpg';
                                }
                              });
                            },
                            color: Colors.black,
                            child: Text(
                              storyBrain.getChoice2(),
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
