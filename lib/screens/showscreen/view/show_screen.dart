import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screens/showscreen/provider/show_provider.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({Key? key}) : super(key: key);

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  ShowProvider? showProviderT;
  ShowProvider? showProviderF;
  @override
  Widget build(BuildContext context) {
    showProviderF=Provider.of<ShowProvider>(context,listen: false);
    showProviderT=Provider.of<ShowProvider>(context,listen: true);
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
                      '${showProviderT!.corianList[index]}',
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
            Text('   Pick Your Caegory',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 100,
                          width: 160,
                          child: Image.asset(showProviderT!.categoryList[0],fit: BoxFit.fill),
                        ),
                      ),
                      Text('KOREAN'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 100,
                          width: 160,
                          child: Image.asset(showProviderT!.categoryList[1],fit: BoxFit.fill,),
                        ),
                      ),
                      Text('MANDARIN'),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 100,
                          width: 160,
                          child: Image.asset(showProviderT!.categoryList[2],fit: BoxFit.fill),
                        ),
                      ),
                      Text('TURKISH'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 100,
                          width: 160,
                          child: Image.asset(showProviderT!.categoryList[3],fit: BoxFit.fill,),
                        ),
                      ),
                      Text('HOLLYWOOD'),
                    ],
                  ),
                ),
              ],
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
                          '${showProviderT!.corianList[index]}',
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                itemCount: showProviderF!.corianList.length,
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
