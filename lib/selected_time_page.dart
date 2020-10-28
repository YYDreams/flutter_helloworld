

import 'package:flutter/material.dart';


class SelectedTimePage extends StatefulWidget {


final Function onSelect;
final int dateIndex;
final int minuteIndex;
final int secondIndex;


SelectedTimePage({Key key, @required this.onSelect, this.dateIndex, this.minuteIndex, this.secondIndex}) : super ( key : key);

@override
  _SelectedTimePageState createState() => _SelectedTimePageState();
}

class _SelectedTimePageState extends State<SelectedTimePage> {
  @override

  ///选中日期的index
  int selectedDate = 0;
  ///选中分钟的index
  int selectedMin = 0;
  ///选中秒的index
  int selectedSecond = 0;


  ///定义控制器
  FixedExtentScrollController DateCotroller;

  FixedExtentScrollController MinuteController;

  FixedExtentScrollController SecondController;

  Widget build(BuildContext context) {
    return Center(
 
      child: Container(
//        height: 200,
        color: Colors.red,
        child: Text("dadadasdsds"),
      )

    );
  }
}












