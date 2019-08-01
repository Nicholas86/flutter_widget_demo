import 'package:flutter/material.dart';

class AnimationsPage extends StatefulWidget {
  @override
  _AnimationsPageState createState() => new _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _animation;
  Animation colorAnimation;
  CurvedAnimation  _curvedAnimation;
  @override
  void initState() {
    // 创建 AnimationController 对象
       _controller=AnimationController(duration:Duration(milliseconds: 1000),vsync: this);
       // 非线性动画
       _curvedAnimation=CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
    // 通过 Tween 对象 创建 Animation 对象
       _animation=Tween(begin: 50.0,end: 200.0).animate(_curvedAnimation);
       // 通过 ColorTween 对象 创建 colorAnimation 对象
       colorAnimation=ColorTween(begin:Colors.redAccent,end: Colors.blue).animate(_curvedAnimation);
       _animation.addListener((){
         setState(() {
         });
       });
       _animation.addStatusListener((status){
          if(status==AnimationStatus.completed){
             _controller.reverse();
          }else if(status==AnimationStatus.dismissed){
            _controller.forward();
          }
       });
    // 执行动画
       _controller.forward();
    super.initState();
  }
   @override
  void dispose() {
   _controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Animation动画"),
         elevation: 0.0,
       ),
      body: Center(
        child: Container(
          height: _animation.value,
          width: _animation.value,
          decoration: BoxDecoration(
            color: colorAnimation.value
          ),
        ),
      ),
    );
  }
}
