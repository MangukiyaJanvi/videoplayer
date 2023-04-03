import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screens/homescreen/view/home_screen.dart';
import 'package:videoplayer/screens/moviescreen/view/movie_screen.dart';
import 'package:videoplayer/screens/newscreen/view/new_screen.dart';
import 'package:videoplayer/screens/showscreen/view/show_screen.dart';
import 'package:videoplayer/screens/videoscreen/provider/video_provider.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoProvider? videoProvidertrue;
  VideoProvider? videoProviderfalse;

  @override
  void initState() {
    super.initState();
    Provider.of<VideoProvider>(context, listen: false).initvideo();
  }

  @override
  Widget build(BuildContext context) {
    videoProviderfalse = Provider.of<VideoProvider>(context, listen: false);
    videoProvidertrue = Provider.of<VideoProvider>(context, listen: true);
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Icon(Icons.play_circle),
                Text(
                  ' MX',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  'PLAYER',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.notifications_none),
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(child: Icon(Icons.home)),
                Tab(child: Text('SHOWS')),
                Tab(child: Text('MOVIES')),
                Tab(child: Text('NEW')),
              ],
            ),
          ),
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.indigo],
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/me.jpg'),
                        ),
                        title: Text(
                          'Janvi Mangukiya',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              'UID: AABCdef1e',
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                            Icon(
                              Icons.file_copy_sharp,
                              size: 20,
                              color: Colors.white70,
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white12,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.amber),
                              child: Icon(
                                Icons.star,
                                color: Colors.amber.shade800,
                                size: 18,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '0',
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                            Container(
                              height: 30,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.white),
                              ),
                              child: Text(
                                'Coins Center',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        height: 100,
                        width: double.infinity,
                        color: Colors.grey.shade300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.download,
                                    size: 20,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Downloads',
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.cloud_download_outlined,
                                    size: 20,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'M-Cloud',
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.offline_share,
                                    size: 20,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'MX Share',
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.music_video,
                                    size: 20,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Local Music',
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/whatsapp.png'),
                        ),
                        title: Text(
                          'WhatsApp Status Saver',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.language_outlined),
                        title: Text(
                          'App Language',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.abc_outlined),
                        title: Text(
                          'Contant Language',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode_outlined),
                        title: Text(
                          'Dark Theme',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        trailing: Switch(
                          value: false,
                          onChanged: (bool value) {},
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.add_box_outlined),
                        title: Text(
                          'Make Videos Default',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        subtitle: Text('Open Videos section'),
                        trailing: Switch(
                          value: false,
                          onChanged: (bool value) {},
                        ),
                      ),
                      Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 2,
                          ),
                        ]),
                        child: ListTile(
                          title: Text(
                            'Local',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              ShowScreen(),
              MovieScreen(),
              NewScreen()
            ],
          ),
        ),
      ),
    );
  }
}
