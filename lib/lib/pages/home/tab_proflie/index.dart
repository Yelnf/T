import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/info/index.dart';
import 'package:flutter02/lib/pages/home/tab_proflie/advertisement.dart';
import 'package:flutter02/lib/pages/home/tab_proflie/funtion_button.dart';
import 'package:flutter02/lib/pages/home/tab_proflie/header.dart';

class TabProflie extends StatelessWidget {
  const TabProflie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('setting');
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: ListView(children: [
        Header(),
        FuntionButton(),
        Advertisement(),
        Info(
          showTitle: true,
        ),
        Text('内容区域'),
      ]),
    );
  }
}
