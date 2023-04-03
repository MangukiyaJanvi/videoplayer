import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screens/homescreen/provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProvidert;
  HomeProvider? homeProviderf;

  @override
  Widget build(BuildContext context) {
    homeProviderf = Provider.of<HomeProvider>(context, listen: false);
    homeProvidert = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1,
                ),
              ]),
              child: Image.asset(
                'assets/images/ipl.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, realIndex) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    child: Image.asset(
                      '${homeProvidert!.imgList[index]}',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () {},
                      label: Icon(Icons.add_box),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text('My List'),
                  ],
                ),
                Column(
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () {},
                      label: Icon(Icons.save_alt),
                    ),
                    Text('Downloads'),
                  ],
                ),
                Column(
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () {},
                      label: Icon(Icons.mic_none),
                    ),
                    Text('Podcast'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('   More Shows For You'),
                TextButton(
                  onPressed: () {},
                  child: Text('SEE MORE   '),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              width: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        height: 150,
                        width: 90,
                        child: Image.asset(
                          '${homeProvidert!.showList[index]}',
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                itemCount: homeProviderf!.showList.length,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('   More Movie For You'),
                TextButton(
                  onPressed: () {},
                  child: Text('SEE MORE   '),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              width: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        height: 150,
                        width: 90,
                        child: InkWell(
                          onTap: () {
                            homeProviderf!.changeIndex(index);
                            Navigator.pushNamed(context, 'movieplay',arguments: index);
                          },
                          child: Image.asset(
                            '${homeProvidert!.MovieList[index]}',
                            fit: BoxFit.fill,
                          ),
                        )),
                  ),
                ),
                itemCount: homeProviderf!.MovieList.length,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('    New Picks'),
            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1,
                ),
              ]),
              child: Image.asset(
                'assets/images/manvswild.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
