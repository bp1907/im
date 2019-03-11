import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './contact_sider_list.dart';
import './contact_item.dart';
import './contact_header.dart';
import './contact_vo.dart';

///好友页面
class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSidelList(
        items: contactData,
        headerBuilder: (BuildContext context,int index) {
          return Container(
            child: ContactHeader(),
          );
        },
        itemBuilder: (BuildContext context, int index){
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            //好友列表项
            child: ContactItem(item:contactData[index]),
          );
        },
        sectionBuilder: (BuildContext context, int index){
          return Container(
            height: 32.0,
            padding: const EdgeInsets.only(left:14.0),
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            //显示字母
            child: Text(
              contactData[index].seationKey,
              style: TextStyle(fontSize: 14.0,color: Color(0xff909090)),
            ),
          );
        },
      ),
    );
  }
}
