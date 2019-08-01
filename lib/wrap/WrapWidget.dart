import 'package:flutter/material.dart';

main() => runApp(WrapWidget());

class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test',
        home: Scaffold(
            appBar: AppBar(title: Text('Flutter 布局Widget -- 流式布局')),
            body: Wrap(
              direction: Axis.horizontal,
              spacing: 10, // 主轴 方向间距
              runSpacing: 10, // 交叉轴 方向间距
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.start,
              children: <Widget>[
                Chip(
                  avatar: CircleAvatar(
                   backgroundColor: Colors.blue, child: Text('A')),
                  label:  Text('AAAAAAAA'),
    //设置为MaterialTapTargetSize.shrinkWrap时，clip距顶部距离为0；设置为MaterialTapTargetSize.padded时距顶部有一个距离
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('M')),
                  label: Text('BBBBBB'),
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('H')),
                  label: Text('CCCCCCCCC'),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('J')),
                  label: Text('DDDDDDDD'),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('J')),
                  label: Text('EEEEEEEE'),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('J')),
                  label: Text('FFFFFFFFFFFFFFFF'),
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                ),
              ],
            )));
  }
}
