import 'package:flutter/material.dart';
import './chat/message_page.dart';
import './contacts/contacts.dart';
import './personal/personal.dart';
///主页面
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  var _currentIndex = 0;

  //聊天页面
  Message message;
  //好友页面
  Contacts contacts;
  //我的页面
  Personal personal;

  //根据当前索引返回不同页面
  currentPage() {
    switch(_currentIndex) {
      case 0:
        if(message == null) {
          message = Message();
        }
        return message;
      case 1:
        if(contacts == null) {
          contacts = Contacts();
        }
        return contacts;
      case 2:
        if(personal == null) {
          personal = Personal();
        }
        return personal;
    }
  }

  //渲染菜单项
  _popupMenuItem(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          //判断使用图片路径还是图标
          imagePath != null ? Image.asset(imagePath,width: 32.0,height: 32.0,)
              : SizedBox(width: 32.0,height: 32.0,child: Icon(icon,color: Colors.white,),),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(title,style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('即时通讯'),
        actions: <Widget>[
          GestureDetector(
            child: Icon(Icons.search),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'search');
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 20.0),
            child: GestureDetector(
              child: Icon(Icons.add),
              onTap: () {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                  items: <PopupMenuEntry>[
                    _popupMenuItem('发起会话',icon: Icons.message),
                    _popupMenuItem('添加好友',icon: Icons.person_add),
                    _popupMenuItem('联系客服',icon: Icons.person),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      body: currentPage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text(
              '聊天',
              style: TextStyle(
                  color: _currentIndex == 0 ? Color(0xFF46c01b)
                      : Color(0xff999999)),
            ),
            icon: _currentIndex == 0 ? Image.asset('images/message_press.png',width: 32.0,height: 28.0,) : Image.asset('images/message_nomal.png',width: 32.0,height: 28.0,),
          ),
          BottomNavigationBarItem(
            title: Text(
              '好友',
              style: TextStyle(
                  color: _currentIndex == 1 ? Color(0xFF46c01b)
                      : Color(0xff999999)),
            ),
            icon: _currentIndex == 1 ? Image.asset('images/contact_press.png',width: 32.0,height: 28.0,) : Image.asset('images/contact.png',width: 32.0,height: 28.0,),
          ),
          BottomNavigationBarItem(
            title: Text(
              '我的',
              style: TextStyle(
                  color: _currentIndex == 2 ? Color(0xFF46c01b)
                      : Color(0xff999999)),
            ),
            icon: _currentIndex == 2 ? Image.asset('images/profile_press.png',width: 32.0,height: 28.0,) : Image.asset('images/profile_nomal.png',width: 32.0,height: 28.0,),
          ),
        ],
      ),
    );
  }
}

