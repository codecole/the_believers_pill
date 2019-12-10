import 'package:flutter/material.dart';
import 'chapter_screen.dart';

int imageNumber = 1;
//int imago;


class WelcomeScreen extends StatefulWidget {

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void backPage() {
    if (imageNumber > 1 && imageNumber < 6) {
      //the number of images is actually 102, but for open source purpose
      setState(() {
        imageNumber--;
        print(imageNumber);
      });
    }
  }

  void forwardPage() {
    if (imageNumber >= 1 && imageNumber < 6) {
      setState(() {
        imageNumber++;
        print(imageNumber);
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("The Believer's Pill"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/page$imageNumber.jpeg'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.local_library,
            color: Colors.deepOrange,
          ),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return FractionallySizedBox(
                  heightFactor: 0.8,
                  child: ChapterScreen(),
                );
              },
            );
          }),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 7.0,
        color: Colors.deepOrange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,40.0,0),
              child: IconButton(
                onPressed: () {
                  backPage();
                },
                icon: Icon(
                  Icons.skip_previous,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0,0,0,0),
              child: IconButton(
                  onPressed: () {
                    forwardPage();
                  },
                  icon: Icon(
                    Icons.skip_next,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
