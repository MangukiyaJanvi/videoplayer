import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screens/homescreen/provider/home_provider.dart';
import 'package:videoplayer/screens/homescreen/view/home_screen.dart';
import 'package:videoplayer/screens/movieplayscreen/movieplay_screen.dart';
import 'package:videoplayer/screens/moviescreen/provider/movie_provider.dart';
import 'package:videoplayer/screens/moviescreen/view/movie_screen.dart';
import 'package:videoplayer/screens/newscreen/provider/new_provider.dart';
import 'package:videoplayer/screens/newscreen/view/new_screen.dart';
import 'package:videoplayer/screens/showscreen/provider/show_provider.dart';
import 'package:videoplayer/screens/showscreen/view/show_screen.dart';
import 'package:videoplayer/screens/splashscreen/view/splash_screen.dart';
import 'package:videoplayer/screens/videoscreen/provider/video_provider.dart';
import 'package:videoplayer/screens/videoscreen/view/video_screen.dart';

import 'screens/movieplayscreen/movieplay_provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => VideoProvider(),),
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
        ChangeNotifierProvider(create: (context) => ShowProvider(),),
        ChangeNotifierProvider(create: (context) => MovieProvider(),),
        ChangeNotifierProvider(create: (context) => NewProvider(),),
        // ChangeNotifierProvider(create: (context) => MoviePlayProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>SplashScreen(),
          'video':(context) =>VideoScreen(),
          'home':(context) =>HomeScreen(),
          'show':(context) =>ShowScreen(),
          'movie':(context) =>MovieScreen(),
          'new':(context) =>NewScreen(),
          'movieplay':(context) =>MoviePlayScreen(),
        },
      ),
    ),
  );
}