import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  GlobalKey _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("获取高度"),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Hello Flutter",
              key: _globalKey,
            ),
          ),
          RaisedButton(
            child: Text('getSize'),
            onPressed: () {
              //获取屏幕的宽高
              print("Screen width:" +
                  MediaQuery.of(context).size.width.toString() +
                  " Screen height:" +
                  MediaQuery.of(context).size.height.toString());
              //获取子Widget 的宽高
              print("Ttext width:" +
                  _globalKey.currentContext.size.width.toString() +
                  " Screen height:" +
                  _globalKey.currentContext.size.height.toString());
            },
          )
        ],
      )
    );
  }
}
