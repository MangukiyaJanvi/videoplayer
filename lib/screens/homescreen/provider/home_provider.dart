import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeProvider extends ChangeNotifier
{
  List imgList=[
    'assets/images/canon.jpg',
    'assets/images/fidda.jpg',
    'assets/images/train.jpg',
  ];
  List showList=[
    'assets/images/daydreamer.jpg',
    'assets/images/goblin.jpg',
    'assets/images/head.jpg',
    'assets/images/loveisintheair.jpg',
    'assets/images/loveissweet.jpg',
    'assets/images/mygirlfriendisanalian.jpg',
    'assets/images/testpic.jpg',
  ];
  List nameList=['Abhimanyu','divergent','chennai',];
  List MovieList=[
    'assets/images/abhimanyu.jpg',
    'assets/images/divergent.jpg',
    'assets/images/chennai.jpg',
    'assets/images/preman.jpg',
    'assets/images/robinhood.jpg',
    'assets/images/train.jpg',
    'assets/images/canon.jpg',
    'assets/images/fidda.jpg',
  ];

  List movieVideoList=[
    'assets/video/abhimanyu.mp4',
    'assets/video/divergent.mp4',
    'assets/video/chennai.mp4',
    'assets/video/preman.mp4',
    'assets/video/robinhood.mp4',
    'assets/video/train.mp4',
    'assets/video/conan.mp4',
    'assets/video/fidda.mp4',
  ];

  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;
  int i = 0;
  void initvideo() {
    videoPlayerController = VideoPlayerController.asset('${movieVideoList[i]}');
    videoPlayerController!.initialize();

    chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: false,
        looping: false,
        fullScreenByDefault: true);
  }

  void changeIndex(int index) {
    i=index;
    print("============================================================$i");
    notifyListeners();
  }
}