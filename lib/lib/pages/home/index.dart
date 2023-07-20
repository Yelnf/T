import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/tab_index/index.dart';
import 'package:flutter02/lib/pages/home/tab_proflie/index.dart';
import 'package:flutter02/lib/pages/home/tab_search/index.dart';
import 'package:flutter02/lib/pages/tab_info/index.dart';
import 'package:flutter02/lib/widget/page_content.dart';

List<Widget> tabViewList = [TabIndex(), TabSearch(), TabInfo(), TabProflie()];

List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
  BottomNavigationBarItem(label: '搜索', icon: Icon(Icons.search)),
  BottomNavigationBarItem(label: '资讯', icon: Icon(Icons.info_outline)),
  BottomNavigationBarItem(label: '我的', icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selecctIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selecctIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selecctIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selecctIndex,
        selectedItemColor: Colors.pink,
        onTap: _onItemTapped,
      ),
    );
  }
}
