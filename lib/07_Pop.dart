import 'package:flutter/material.dart';
//import 'package:flutter_app/time_test.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

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

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {

  var selectStrType;


  void handleSelect(){


    print("handleSelecthandleSelecthandleSelecthandleSelect");
    setState(() {

//      selectStrType  = selectStr;

    });
  }
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
                child: Text(selectStrType != null ? selectStrType : '手机推流'),
              )
            ],
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext bc) {
                        return Stack(
                          children: <Widget>[
                            Container(
                              height: 30.0,
                              width: double.infinity,
                              color: Colors.black54,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                  )),
                            ),
                            Container(
//                              child: SelectedTimePage(),
                            ),
                          ],
                        );
                      });

                },
                child: Text('点击选择时间'),
              ),
            ],
          ),
        ],
      ),
    );
  }


}




