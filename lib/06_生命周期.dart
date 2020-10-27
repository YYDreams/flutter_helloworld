import 'package:flutter/material.dart';

main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("生命周期"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

//StatefulWidget的生命周期

class HomeContent extends StatefulWidget {
  HomeContent(){
    print("1、调用HomeContent的constructor");
  }
  @override
  _HomeContentState createState(){
    print("2、调用HomeContent的createState方法");
    return  _HomeContentState();
  }
}

class _HomeContentState extends State<HomeContent> {
  _HomeContentState(){
    print("3、调用_HomeContentState的constructor");
  }

  @override
  void initState() {
//    这里做一些初始化操作
    print("4、调用_HomeContentState的initState的方法");
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    print("5、调用_HomeContentState的build方法");
    return Container();
  }
  @override
  void dispose() {
//    销毁的时候调用
    print("6、调用_HomeContentState的dispose方法");
    super.dispose();
  }
}

