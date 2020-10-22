import 'package:flutter/material.dart';

//只有一行代码 可用箭头函数
main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("商品列表"),
        ),
        body: HomeBoby(),
      ),
    );
  }
}

class HomeBoby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HomeGoodsItem("超级无敌1", "哈哈哈哈哈哈哈1",
            "https://upload-images.jianshu.io/upload_images/1658521-ea53a6546dda6372.png"),
        SizedBox(height: 6),
        HomeGoodsItem("超级无敌2", "哈哈哈哈哈哈哈2",
            "https://upload-images.jianshu.io/upload_images/1658521-ea53a6546dda6372.png"),
        SizedBox(height: 6),
        HomeGoodsItem("超级无敌3", "哈哈哈哈哈哈哈3",
            "https://upload-images.jianshu.io/upload_images/1658521-ea53a6546dda6372.png"),
      ],
    );
  }
}

//The specific RenderFlex in question is: RenderFlex#68470 relayoutBoundary=up1 OVERFLOWING
//relayoutBoundary：内容溢出

//StatelessWidget里面定义的变量都应该是final

class HomeGoodsItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;

  final titleStyle = TextStyle(fontSize: 20.0, color: Colors.red);
  final descStyle = TextStyle(fontSize: 16.0, color: Colors.black);

//  构造函数初始化
  HomeGoodsItem(this.title, this.desc, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    //每次调用build的时候 都会重新创建
//option + enter 可包一层
//  快捷键 command + option + L 格式化
//  快捷键 command + option + B
    return Container(
//      decoration
      decoration: BoxDecoration(
          border: Border.all(
            width: 5, //设置边框的宽度
            color: Colors.grey, //设置边框的颜色
          )),
      child: Column(

//    crossAxisAlignment:交叉轴
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: titleStyle),
//      设置间距的方式的几种方式
//      SizedBox
          SizedBox(height: 10),
          Text(desc, style: descStyle),
          SizedBox(height: 10),
          Image.network(imageUrl),
        ],
      ),
    );
  }
}
