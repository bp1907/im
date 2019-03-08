import 'package:flutter/material.dart';
import 'dart:async';

///加载页面
class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //在加载页面停顿3秒
    Future.delayed(Duration(seconds: 3),(){
      print('Flutter即时通讯App界面实现...');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          //加载页面居中背景图  使用cover模式
          Image.asset('images/loading.jpg',fit: BoxFit.cover,),
        ],
      ),
    );
  }
}

