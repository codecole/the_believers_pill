import 'package:flutter/material.dart';

class Chapters extends StatelessWidget {

  final String dayNumber;
  final String dayTitle;
  final Function gotoChapter;

  Chapters({@required this.dayNumber, @required this.dayTitle, @required this.gotoChapter});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: gotoChapter,
      leading: CircleAvatar(
          backgroundColor: Colors.deepOrange,
          child: Icon(
            Icons.format_list_bulleted,
            color: Colors.white,
          )
      ),
      title: Text('$dayNumber'),
      subtitle: Text('$dayTitle'),
    );
  }
}
