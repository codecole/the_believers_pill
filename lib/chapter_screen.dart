import 'package:flutter/material.dart';
import 'chapters_data.dart';
import 'chapters.dart';
import 'welcome.dart';
Chapterbrain theBrain = Chapterbrain();

class ChapterScreen extends StatefulWidget {
  @override
  _ChapterScreenState createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
          itemCount: theBrain.dataItems.length,
          itemBuilder: (BuildContext context, int position){
            return Chapters(
              dayTitle: theBrain.dataItems[position].day.toString(),
              dayNumber: theBrain.dataItems[position].dayTitle.toString(),
              gotoChapter: (){
                setState(() {
                  imageNumber = position + 1;
                  print(imageNumber);
                  });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen(
//
                  )),
                );


              },
            );
          },
        ));
  }
}


