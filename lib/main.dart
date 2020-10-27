import 'package:flutter/material.dart';

main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("基础Widget"),
        ),
        body: HomeContent(),
      ),
    );
  }
}
//Text/Button/Image

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

