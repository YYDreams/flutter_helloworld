import 'package:flutter/material.dart';

main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("计数器"),
        ),
        body: HomeContent(),
      ),
    );
  }
}


class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}


/**
 * 为什么Flutter在设计的时候StatefulWidget的build方法是在State中
 *  1.build出来的Widget是需要依赖State中的变量（状态、数据）
 *  2.在Fluter的运行过程中
 *       Widget是不断的销毁和创建的
 *       当我们自己的状态发生改变时，并不希望重新创建一个新的State
 * */


class _HomeContentState extends State<HomeContent> {
  @override
  var _currentCount = 0;
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          _getButtons(),

          Text("当前计数${_currentCount}",style: TextStyle(fontSize: 25)),
        ],

      ),
    );
  }


  Widget _getButtons(){

    return Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(

            child: Text("+",style: TextStyle(fontSize: 22,color: Colors.white),),
            color: Colors.green,
            onPressed: (){

              setState(() {
                _currentCount++;

              });



            }),
        RaisedButton(

            child: Text("-",style: TextStyle(fontSize: 22,color: Colors.white),),
            color: Colors.red,

            onPressed: (){
              setState(() {
                _currentCount--;

              });
            }),
      ],

    );
  }
}







