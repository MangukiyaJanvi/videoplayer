// import 'package:chewie/chewie.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:video_player/video_player.dart';
//
// class MoviePlayProvider extends ChangeNotifier {
//   VideoPlayerController? videoPlayerController;
//   ChewieController? chewieController;
//   int i = 0;
//
//   List movieVideoList = [
//     'assets/video/abhimanyu.mp4',
//     'assets/video/divergent.mp4',
//     'assets/video/chennai.mp4',
//     'assets/video/preman.mp4',
//     'assets/video/robinhood.mp4',
//     'assets/video/train.mp4',
//     'assets/video/conan.mp4',
//     'assets/video/fidda.mp4',
//   ];
//
//   void initvideo() {
//     videoPlayerController = VideoPlayerController.asset('${movieVideoList[i]}');
//     videoPlayerController!.initialize();
//
//     chewieController = ChewieController(
//         videoPlayerController: videoPlayerController!,
//         autoPlay: false,
//         looping: false,
//         fullScreenByDefault: true);
//   }
//
//   void changeIndex(int index) {
//     index = i;
//     notifyListeners();
//   }
// }
