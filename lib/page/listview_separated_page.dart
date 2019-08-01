import 'package:flutter/material.dart';
class ListViewSeparatedPage extends StatelessWidget {
  List<String> widgets = [
    '第14节 -- 文本框',
    '第15节 -- 图片和Icon',
    '第16节 -- 输入框',
    '第17节 -- SnackBar',
    '第18节 -- 对话框',
    '第19节 -- BottomSheet',
    '第20节 -- 菜单栏',
    '第21节 -- 手势识别Widget',
    '第24节 -- 弹性布局',
    '第25节 -- 线性布局',
    '第26节 -- 流式布局',
    '第27节 -- 层叠布局'
     '第28节 -- 容器类Widget',
    '第29节 -- 功能类Widget',
    '第30节 -- SingleChildScrollView',
    '第31节 -- ListView',
    '第32节 -- CustomScrollView',
    '第33节 -- GridView',
    '第34节 -- PageView',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('ListView.separated'),
         elevation: 0.0,
       ),
      body:Container(
        child: ListView.separated(
            itemCount: widgets.length+1,
            itemBuilder: (context,index){
              if(index==0){
                return new Container(
                  height: 40.0,
                  child: new Center(child: new Text("头布局"),),
                    color: Colors.orangeAccent,
                );
              }
              return  ListTile(title: Text(widgets[index-1]));
            },
            separatorBuilder: (context ,index){
              if (index == 2) {
                return new Container(
                  height: 40.0,
                  child: new Center(child: new Text("类型1"),),
                  color: Colors.red,
                );
              } else if (index == 7) {
                return new Container(
                  height: 40.0,
                  child: new Center(child: new Text("类型2"),),
                  color: Colors.blue,
                );
              }else if (index == widgets.length-5) {
                return new Container(
                  height: 40.0,
                  child: new Center(child: new Text("类型3"),),
                  color: Colors.yellow,
                );
              } else {
                return Divider();
              }
            },

        ),
      ),
    );
  }
}


