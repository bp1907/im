import 'package:flutter/material.dart';
import './touch_callback.dart';
///im列表项
class ImItem extends StatelessWidget {

  //标题
  final String title;
  //图片路径
  final String imagePath;
  //图标
  final Icon icon;

  ImItem({Key key,@required
  this.title,this.imagePath,this.icon}): super (key:key);

  @override
  Widget build(BuildContext context) {
    return TouchCallBack(
      child: Container(
        height: 50.0,
        child: Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 22.0,right: 20.0),
              child: imagePath != null ? Image.asset(imagePath,width: 32.0,height: 32.0,) : SizedBox(height: 32.0,width: 32.0,child: icon,),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16.0,color: Color(0xFF353535)),
            ),
          ],
        ),
      ),
      onPressed: () {
        switch(title) {
          case '好友动态':
            Navigator.pushNamed(context, '/friends');
            break;
          case '联系客服':
            print('联系客服');
            break;
        }
      },
    );
  }
}
