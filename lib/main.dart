import 'package:flutter/material.dart';
import 'package:flutter_app/index_page.dart';


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
        body: IndexPage(),
      ),
    );
  }
}


