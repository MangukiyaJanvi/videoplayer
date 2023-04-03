import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screens/homescreen/provider/home_provider.dart';

import 'movieplay_provider.dart';

class MoviePlayScreen extends StatefulWidget {
  const MoviePlayScreen({Key? key}) : super(key: key);

  @override
  State<MoviePlayScreen> createState() => _MoviePlayScreenState();
}

class _MoviePlayScreenState extends State<MoviePlayScreen> {
  HomeProvider? homeProvidert;
  HomeProvider? homeProviderf;

  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).initvideo();
  }

  @override
  Widget build(BuildContext context) {
    homeProviderf = Provider.of<HomeProvider>(context, listen: false);
    homeProvidert = Provider.of<HomeProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Chewie(
                controller: homeProvidert!.chewieController!,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${homeProviderf!.nameList[homeProviderf!.i]} ||",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
