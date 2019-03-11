import 'package:flutter/material.dart';
import './message_data.dart';
import './message_item.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (BuildContext context, int index) {
          //传入messageData返回的列表
          return MessageItem(messageData[index]);
        },
      ),
    );
  }
}
