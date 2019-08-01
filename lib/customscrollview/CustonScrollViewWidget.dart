import 'package:flutter/material.dart';

void main() => runApp(CustomScrollViewWidget());

class CustomScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      home: Scaffold(
        appBar:
        AppBar(title: new Text('Flutter 可滚动Widget -- CustomScrollView')),
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              pinned: true,  //设置向上滑动后，顶部固定不动
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Demo'),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: Text('grid item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 50.0, //item的高度
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Text('list item $index'),
                  );
                },
//                childCount: 50  //如果不设置数量的话，会有无限的数据
              ),
            ),
          ],
        ),
      ),
    );
  }
}
