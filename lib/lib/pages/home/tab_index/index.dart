import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/info/index.dart';
import 'package:flutter02/lib/pages/home/tab_index/index_navigator.dart';
import 'package:flutter02/lib/pages/home/tab_index/index_recommand.dart';
import 'package:flutter02/lib/pages/tab_info/index.dart';
import 'package:flutter02/lib/widget/search_bar/index.dart';
import 'package:flutter_advanced_networkimage/provider.dart';

import '../../../widget/commom_swipper.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SearchBar(
            showLocation: true,
            goBackCallback: () {},
            onCancel: () {},
            showMap: true,
            onSearch: () {
              Navigator.of(context).pushNamed('search');
            },
            onSearchSubmit: (String value) {},
          ),
        ),
        body: ListView(
          children: <Widget>[
            CommonSwipper(),
            IndexNavigator(),
            IndexRecommand(),
            Info(),
            Text('这是内容区域'),
            Text('为什么不行')
          ],
        ));
  }
}
