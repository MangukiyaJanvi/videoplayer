import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screens/moviescreen/provider/movie_provider.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  MovieProvider? movieProvidert;
  MovieProvider? movieProviderf;

  @override
  Widget build(BuildContext context) {
    movieProviderf = Provider.of<MovieProvider>(context, listen: false);
    movieProvidert = Provider.of<MovieProvider>(context, listen: true);
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
                      '${movieProvidert!.SliderList[index]}',
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('   MX Top piks'),
                TextButton(
                  onPressed: () {},
                  child: Text('SEE MORE   '),
                ),
              ],
            ),
            SizedBox(
              height: 250,
              child: GridView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 150,
                      width: 90,
                      child: Image.asset(
                        '${movieProvidert!.MovieList[index]}',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                itemCount: movieProviderf!.MovieList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     SizedBox(
            //       height: 50,
            //     ),
            //     Container(
            //       height: 200,
            //       width: double.infinity,
            //       child: Chewie(
            //         controller: videoProvidertrue!.chewieController!,
            //       ),
            //     ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     Text(
            //       'Shawn Mendes, Camila Cabello - Señorita (Lyrics)',
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
