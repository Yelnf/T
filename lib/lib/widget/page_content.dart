import 'package:flutter/material.dart';
import 'package:flutter02/lib/widget/routes.dart';

class PageContent extends StatelessWidget {
  final String name;
  const PageContent({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('当前页面：$name')),
      body: ListView(children: [
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.home);
            },
            child: Text("首页")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.login);
            },
          child: Text("登录")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/aaaa');
            },
            child: Text("不存在页面")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/room/222');
            },
            child: Text("id:222"))
      ]),
    );
  }
}
