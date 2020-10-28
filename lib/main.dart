import 'package:flutter/material.dart';
import 'package:flutter_app/selected_time_page.dart';

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
      padding: EdgeInsets.only(top: 50.0),
      child:  Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: Text("sdsds"),
//                  child: Text(selectArea != null ? selectArea['address'] : '未选择...'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  showBottomSheet(context: context, builder: (_)=>Container(
                    height: 300.0,
                    child: SelectedTimePage(
//                        onSelect: handleSelect,
//                        initProviceIndex: selectArea == null ? 0 : selectArea['proviceIndex'],
//                        initCityIndex: selectArea == null ? 0 : selectArea['cityIndex'],
//                        initCountyIndex: selectArea == null ? 0 : selectArea['countyIndex'],
                    ),
                  ));
                },
                child: Text('点击选择省市区'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}




