import 'package:flutter/material.dart';
import 'package:douban/HotWidget.dart';
import 'package:douban/MoviesWidget.dart';
import 'package:douban/MineWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '豆瓣电影',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'DOUBAN DEMO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 底部栏选择索引
  int _selectedIndex = 0;
  // 对应tab  body
  final _widgetItems = [HotWidget(), MoviesWidget(),MineWidget()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetItems[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.panorama_fish_eye),
              title: Text('Business'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('School'),
            ),
          ],
          currentIndex: _selectedIndex,//默认选中的 index
          fixedColor: Colors.deepOrange, //选中时颜色变为黑色
          type: BottomNavigationBarType.fixed,//类型为 fixed
          onTap: _onItemTapped,
        )
    );
  }
  void _onItemTapped (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
