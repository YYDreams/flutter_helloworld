
import 'package:flutter/material.dart';

main(){

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner:false ,

        home: Scaffold(
          appBar: AppBar(

            title: Text("Flutter"),
          ),
          body: Center(
               child:  Text(
                 "Hello World",
                 textDirection: TextDirection.ltr,
                 style: TextStyle(fontSize: 20),
               ),
            ),
          ),
        ),
  );

}
