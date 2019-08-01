import 'package:flutter/material.dart';

void main() => runApp(PopupMenuButtonWidget());

class PopupMenuButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI基础Widget -- 按钮")),
          body: PopupMenuButton<MenuItem>(
                child: Container(
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(20),
                  child: Text('菜单按钮'),
                  color: Colors.orangeAccent,
                ),
            onSelected: (MenuItem result) {
              print('click '+result.toString());
            },
            offset: Offset(100, 100),//设置弹出的位置
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuItem>>[
                  const PopupMenuItem<MenuItem>(
                    value: MenuItem.menuA,
                    child: Text('menu A'),
                  ),
                  const PopupMenuItem<MenuItem>(
                    value: MenuItem.menuB,
                    child: Text('menu B'),
                  ),
                  const PopupMenuItem<MenuItem>(
                    value: MenuItem.menuC,
                    child: Text('menu C'),
                  ),
                  const PopupMenuItem<MenuItem>(
                    value: MenuItem.menuD,
                    child: Text('menu D'),
                  ),
                ],
          )),
    );
  }
}

enum MenuItem { menuA, menuB, menuC, menuD }
