import 'package:chewie/chewie.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class VideoProvider extends ChangeNotifier
{
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;
  int i=0;

  void initvideo()
  {
    videoPlayerController =VideoPlayerController.asset('assets/video/conan.mp4');
    videoPlayerController!.initialize();

    chewieController=ChewieController(videoPlayerController: videoPlayerController!,autoPlay: false,looping: false);
  }

  void changeIndex(int index)
  {
    index=i;
    notifyListeners();
  }

}