import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import './message_data.dart';
import '../common/touch_callback.dart';

//聊天信息项
class MessageItem extends StatelessWidget {

  final MessageData messageData;
  MessageItem(this.messageData);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        //仅加一个底部边, 这样整个列表的每项信息下面都会有一条边
        border: Border(bottom: BorderSide(width: 0.5,color: Color(0xFFd9d9d9))),
      ),
      height: 64.0,
      child: TouchCallBack(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //头像
            Container(
              margin: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Image.network(messageData.avatar,width: 48.0,height: 48.0,),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    messageData.title,
                    style: TextStyle(fontSize: 16.0,color: Color(0xFF353535)),
                    maxLines: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                  ),
                  Text(
                    messageData.subTitle,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFFa9a9a9),
                    ),
                    maxLines: 1,
                    //显示不完的文本用省略号显示
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            //时间
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.only(right: 12.0,top: 12.0),
              child: Text(
                //格式化时间
                formatDate(messageData.time, [HH,':',nn,':','ss']).toString(),
                style: TextStyle(fontSize: 14.0,color: Color(0xFFa9a9a9)),
              ),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}



