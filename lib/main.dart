
import 'package:flutter/material.dart';

//只有一行代码 可用箭头函数
main() =>(  runApp(MyApp()));

/*
* Widget:
* 有状态的Widget:StatefulWidget 在运行过程中有些状态（data）需要改变
* 无状态的Widget:StatelessWidget 内容是确定灭有状态（data）的改变
* */

//写死的东西则选用StatelessWidget继承
class MyApp extends StatelessWidget{

//StatelessWidget中的 有个抽象方法 build 必须要实现
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner:false ,

      home: Scaffold(

        appBar: AppBar(
          title:Text("Flutter"),
        ),
//        body: HomeBody(),
        body: HomeBodyFulWidget(),
      ),
    );
  }
}


class HomeBodyFulWidget extends StatefulWidget {
  @override
  _HomeBodyFulWidgetState createState() => _HomeBodyFulWidgetState();


}

class _HomeBodyFulWidgetState extends State<HomeBodyFulWidget> {

  var isAgree = true;


  @override

  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
//
          Checkbox(value:isAgree, onChanged: (value){

            print(isAgree);
            //刷新
            setState(() {
              isAgree = value;
            });
          }),
          Text("我已阅读且同意《XXXX协议 》"),


        ],
      ),
    );
  }
}






//错误代码
//@immutable 类不可变 也就是说里面定义的所有东西都是final (包含定义的属性)
//所以StatelessWidget里面不能定义状态相关的东西 ，没有意义
//StatelessWidget里面就不能存在状态改变的代码 ，设计不合理
class HomeBody extends StatelessWidget{

  var isAgree = true;

  @override
  Widget build(BuildContext context) {
    return  Center(

//  疑惑 => 明明是Center为嘛没有居中
//  Center  只是针对Row 要想对Row里面的部件起作用 需要设置mainAxisAlignment
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
//
          Checkbox(value:isAgree, onChanged: (value){
            isAgree = value;
            print(isAgree);
          }),
          Text("我已阅读且同意《XXXX协议 》"),


        ],
      ),

    );
  }
}

