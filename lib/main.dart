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
    return Container(


      child: Column(
        children: <Widget>[

//     1、 RaisedButton：有凸起效果
           RaisedButton(
               textColor: Colors.white,
               color: Colors.red,
               child: Text("RaisedButton"),
               onPressed: (){
                 print("RaisedButton");

          }),
//        2、  FlatButton 偏平按钮
          FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text("FlatButton"),
              onPressed: (){
                print("FlatButton");

              }),
//       3、   OutlineButton 默认有边框的按钮
        OutlineButton(
            textColor: Colors.black,
            color: Colors.red,
            child: Text("FlatButton"),
            onPressed: (){

        }),

//      4、  自定义Button (图标、文字、背景、圆角)

        FlatButton(onPressed: (){

          print("自定义button");
        },
//            Row设置了Row则占据了整行
            color:Colors.orange ,
//           设置圆角
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),

            ),
            child: Column(
              //去掉则上面的三个按钮会居中显示
              mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.favorite,color: Colors.red,),
            Text("开播啦"),

          ],
        ))




        ],
      ),


    );

  }
}





