import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  final _defaultColor = Colors.black;
  final _selectedColor = Colors.red;
  final PageController _controller = PageController(
    initialPage: 0,
  );
  int _currentIndex = 0; //记录当前选中的index
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        controller:  _controller,
        children: <Widget>[
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),

        ],
        //从来不滚动 （即不左右滚动）
        physics: NeverScrollableScrollPhysics(),

      ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;

            });
          },

          type: BottomNavigationBarType.fixed, //图片和文字都显示

          items: [

            _setuptabBar('首页', Icons.home, 0),
            _setuptabBar('test', Icons.search, 1),
            _setuptabBar('test1', Icons.camera_alt, 2),
            _setuptabBar('test2', Icons.account_circle, 3),
            _setuptabBar('Test3', Icons.text_format, 4),

          ]
      ),
    );

  }

  _setuptabBar(String tabBarTitle,IconData normalIcon,int index){


    return   BottomNavigationBarItem(
      icon: Icon(normalIcon,color:_defaultColor),
      activeIcon:Icon(normalIcon, color: _selectedColor),
      title: Text(tabBarTitle, style:TextStyle(
        color: _currentIndex != index? _defaultColor : _selectedColor,
      )),
    );

  }
}