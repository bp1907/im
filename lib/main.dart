import 'package:flutter/material.dart';
import './loading.dart';
import './app.dart';
import './search.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IM',
      //自定义主题
      theme: mDefaultTheme,
      routes: <String, WidgetBuilder>{
        'app': (BuildContext context) => App(),
        '/friends': (_) => WebviewScaffold(
          url: 'https://flutter.io/',
          appBar: AppBar(
            title: Text('Flutter官网'),//指定打开页面的标题
          ),
          withZoom: true,//是否缩放页面
          withLocalStorage: true,//是否本地存储
        ),
        'search': (BuildContext context) => Search(),
      },
      home: LoadingPage(),
    );
  }

  //自定义主题
  final ThemeData mDefaultTheme = ThemeData(
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Color(0xFFebebeb),
    cardColor: Colors.green,
  );
}