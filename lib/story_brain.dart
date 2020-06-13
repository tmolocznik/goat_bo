import 'story.dart';

class StoryBrain {

  int _storyNumber = 0;

  List<Story> _storyData = [
    // 0
    Story(
        storyIndex: 0,
        storyTitle:
        'You wake up in the morning and you notice a strange horned box next to your bed',
        choice1: 'You open it up',
        choice2: 'You don \'t open it and put it in your backpack'),
    //1

    Story(
        storyIndex: 1,
        storyTitle:
        'A strong avenger goat pops out and tells you he can fight most anyone',
        choice1: 'Fight the Evil Spaghetti Man',
        choice2: 'Fight the Evil Kitchen Sink'),

    //2
    Story(
        storyIndex: 2,
        storyTitle:
        'You arrive at the Evil Kitchen Sink\'s Manor',
        choice1: 'Look for the Evil Kitchen Sink',
        choice2: 'LEAVE!!!'),

    //3
    Story(
        storyIndex: 3,
        storyTitle:
        'Let\'s go the Evil Spaghetti Man\'s pots and pans',
        choice1: 'Go and look for the Evil Spaghetti Man',
        choice2: 'Eat the spaghetti under your feet'),

//4
    Story(
        storyIndex: 4,
        storyTitle:
        'You arrive at the Evil Kitchen Sink\'s Manor',
        choice1: 'Look for the Evil Kitchen Sink',
        choice2: 'LEAVE!!!'),

    //5
    Story(
        storyIndex: 5,
        storyTitle:
        'Hooray!!! We found that Evil Spaghetti Man Pots & Man',
        choice1: 'Go inside a room to look for it ',
        choice2: 'Follow the first door that you see'),

    //6
    Story(
        storyIndex: 6,
        storyTitle:
        'You thought to yourself you should have opened it up ',
        choice1: 'You should pick again',
        choice2: ''),

    //7
    Story(
        storyIndex: 7,
        storyTitle:
        'You start walking down the path and it get\'s very dark all of a sudden',
        choice1: 'Go into the Bright Light',
        choice2: 'Go back'),

    //8
    Story(
        storyIndex: 8,
        storyTitle:
        'The Bright Light shows you two doors, pick one',
        choice1: 'Pick Door #1',
        choice2: 'Pick Door #2'),

    //9
    Story(
        storyIndex: 9,
        storyTitle:
        ' ',
        choice1: 'Open the door',
        choice2: 'Run Away'),

    //10
    Story(
        storyIndex: 10,
        storyTitle:
        ' ',
        choice1: 'Open the door',
        choice2: 'Run Away'),

    //11
    Story(
        storyIndex: 11,
        storyTitle:
        'Your lucky day, you have found the two best spaghetti fighters in the world!! ',
        choice1: 'End the adventure and wake up',
        choice2: 'Go back and try Door #2'),

    //12
    Story(
        storyIndex: 12,
        storyTitle:
        'You go inside a dark spooky room ',
        choice1: 'Open the door',
        choice2: 'Go look for the Evil Sink instead'),

    //13
    Story(
        storyIndex: 13,
        storyTitle:
        'It was a pretty spooky dream',
        choice1: 'Time to WAKE UP!!! and get ready for school',
        choice2: ''),

    //14
    Story(
        storyIndex: 14,
        storyTitle:
        'Oh no, PIRATES!!',
        choice1: 'Time to WAKE UP!!! and get ready for school',
        choice2: ''),

    //15
    Story(
        storyIndex: 15,
        storyTitle:
        'BOOM!!',
        choice1: 'Time to WAKE UP!!! and get ready for school',
        choice2: ''),

    //16
    Story(
        storyIndex: 16,
        storyTitle:
        'You found the Evil Sink!!!',
        choice1: 'Blow up the Evil Kitchen Sink',
        choice2: 'Wake Up'),
  ];

  void nextStory(int choiceNumber) {
    //0
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 1;
    }
    else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 6;
    }

    //1
    else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 3;
    }
    else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 2;
    }

    //2
    else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 16;
    }
    else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 0;
    }

    //3
    else if (choiceNumber == 1 && _storyNumber == 3) {
      _storyNumber = 7;
    }
    else if (choiceNumber == 2 && _storyNumber == 3) {
      _storyNumber = 5;
    }

    //4
    else if (choiceNumber == 1 && _storyNumber == 4) {
      _storyNumber = 16;
    }
    else if (choiceNumber == 2 && _storyNumber == 4) {
      _storyNumber = 0;
    }

    //5
    else if (choiceNumber == 1 && _storyNumber == 5) {
      _storyNumber = 12;
    }
    else if (choiceNumber == 2 && _storyNumber == 5) {
      _storyNumber = 9;
    }
    //6
    else if (choiceNumber == 1 && _storyNumber == 6) {
      _storyNumber = 0;
    }

    //7
    else if (choiceNumber == 1 && _storyNumber == 7) {
      _storyNumber = 8;
    }
    else if (choiceNumber == 2 && _storyNumber == 7) {
      _storyNumber =3;
    }

    //8
    else if (choiceNumber == 1 && _storyNumber == 8) {
      _storyNumber = 9;
    }
    else if (choiceNumber == 2 && _storyNumber == 8) {
      _storyNumber = 14;
    }

    //9
    else if (choiceNumber == 1 && _storyNumber == 9) {
      _storyNumber = 11;
    }
    else if (choiceNumber == 2 && _storyNumber == 9) {
     restart();
    }

    //10
    else if (choiceNumber == 1 && _storyNumber == 10) {
      _storyNumber = 14;
    }
    else if (choiceNumber == 2 && _storyNumber == 10) {
      restart();
    }

    //11
    else if (choiceNumber == 1 && _storyNumber == 11) {
      _storyNumber = 13;
    }
    else if (choiceNumber == 2 && _storyNumber == 11) {
      _storyNumber = 8;
    }

    //12
    else if (choiceNumber == 1 && _storyNumber == 12) {
     _storyNumber = 15;
    }
    else if (choiceNumber == 2 && _storyNumber == 12) {
      _storyNumber = 4;
    }

    //13
    else if (choiceNumber == 1 && _storyNumber == 13) {
     _storyNumber = 0;
    }

    //14
    else if (choiceNumber == 1 && _storyNumber == 14) {
      _storyNumber = 13;
    }

    //15
    else if (choiceNumber == 1 && _storyNumber == 15) {
      _storyNumber = 13;
    }

    //16
    else if (choiceNumber == 1 && _storyNumber == 16) {
      _storyNumber = 15;
    }
    else if (choiceNumber == 2 && _storyNumber == 16) {
      _storyNumber = 13;
    }

  }

  int getStoryNumber() {
    return _storyData[_storyNumber].storyIndex;
  }

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }


  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2 ||
        _storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5
        || _storyNumber == 4  || _storyNumber == 7 || _storyNumber == 8
        || _storyNumber == 9 || _storyNumber == 10 || _storyNumber == 11
        || _storyNumber == 12 || _storyNumber == 16)
      return true;
    else {
      return false;
    }
  }

  void restart() {
    _storyNumber = 0;
  }
}





