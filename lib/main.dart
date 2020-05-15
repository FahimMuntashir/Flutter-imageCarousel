import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int photoIndex =0;
  List<String> photos = [
    'images/alex-knight-2EJCSULRwC8-unsplash.jpg',
    'images/alexandre-debieve-FO7JIlwjOtU-unsplash.jpg',
    'images/christopher-gower-m_HRfLhgABo-unsplash.jpg',
    'images/marvin-meyer-SYTO3xs06fU-unsplash.jpg',
  ];
  void _previousImage(){
    setState(() {
      photoIndex = photoIndex>0 ? photoIndex -1 : 0;
    });
}

  void _nextImage(){
    setState(() {
      photoIndex = photoIndex < photos.length -1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel'),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(image: AssetImage(photos[photoIndex]), fit: BoxFit.cover)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



