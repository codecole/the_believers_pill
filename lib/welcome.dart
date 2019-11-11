import 'package:flutter/material.dart';
import 'chapter_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int imageNumber = 1;

  void backPage() {
    if (102 > imageNumber) {
      setState(() {
        imageNumber++;
      });
    }
  }

  void forwardPage() {
    if (imageNumber != 0) {
      setState(() {
        imageNumber--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                forwardPage();
              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.navigate_before,
                color: Colors.black,
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                backPage();
              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("The Believer's Pill"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/page$imageNumber.jpeg'),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepOrange,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(

                icon: Icon(Icons.flip),
                color: Colors.white,

                onPressed: () {
                  showModalBottomSheet(
                      context: context, builder: (context)=>
                  ChapterScreen(),);
                }),
          ],
        ),
      ),
    );
  }
}
