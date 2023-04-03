import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screens/newscreen/provider/new_provider.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  NewProvider? newProviderT;
  NewProvider? newProviderF;
  @override
  Widget build(BuildContext context) {
    newProviderF=Provider.of<NewProvider>(context,listen: false);
    newProviderT=Provider.of<NewProvider>(context,listen: true);
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
                'assets/images/manvswild.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('   News Channels'),
                TextButton(
                  onPressed: () {},
                  child: Text('SEE MORE   '),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/abpnews.png'),
                    ),
                    Text('ABP News')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/cgtn.png',
                      ),
                    ),
                    Text('CGTN News')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/indiatv.jpg'),
                    ),
                    Text('INDIA TV')
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
                Text('   New In Shows'),
                TextButton(
                  onPressed: () {},
                  child: Text('SEE MORE   '),
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
                          '${newProviderT!.corianList[index]}',
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                itemCount: newProviderF!.corianList.length,
              ),
            ),
            SizedBox(
              height: 10,
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('   New In Movies'),
                TextButton(
                  onPressed: () {},
                  child: Text('SEE MORE   '),
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
                          '${newProviderT!.MovieList[index]}',
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                itemCount: newProviderF!.MovieList.length,
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
