import 'package:flutter/material.dart';
///好友vo类
class ContactVO {
  //字母排列值
  String seationKey;
  //名称
  String name;
  //头像url
  String avatarUrl;
  //构造函数
  ContactVO({@required this.seationKey,this.name,this.avatarUrl});
}

List<ContactVO> contactData = [
  ContactVO(
    seationKey: 'A',
    name: 'A张三',
    avatarUrl:'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540633615163&di=e6662df8230b7e8a87cf0017df7252b7&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fac345982b2b7d0a2d1f5b989c0ef76094b369ae2.jpg',
  ),
  ContactVO(
      seationKey: 'A',
      name: '阿黄',
      avatarUrl:

      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540441383345&di=39fe0512213122b232a7861363d86ba4&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F8435e5dde71190ef0795a828c41b9d16fcfa60de.jpg'),
  ContactVO(
      seationKey: 'B',
      name: '波波',
      avatarUrl:

      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540441383345&di=41a9c62adb0702595cbeab1eb7935f66&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F3b292df5e0fe992532fd5c7e3fa85edf8db1712e.jpg'),
  //更多好友数据
];