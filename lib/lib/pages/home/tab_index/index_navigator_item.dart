import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';

class IndexNavigatorItem {
  final String title;
  final String imageUrl;
  final Function(BuildContext context) onTap;

  IndexNavigatorItem(this.title, this.imageUrl, this.onTap);
}

List<IndexNavigatorItem> navigatorItemList = [
  IndexNavigatorItem(
      '整组',
      'https://bpic.51yuansu.com/pic3/cover/01/27/60/59233b672e7cc_610.jpg',
      (context) => Navigator.of(context).pushNamed('login')),
  IndexNavigatorItem(
      '合租',
      'https://img0.baidu.com/it/u=2259130672,611257213&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=800',
      (context) => Navigator.of(context).pushNamed('login')),
  IndexNavigatorItem(
      '地图找房',
      'https://img1.baidu.com/it/u=3817111724,720571259&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=732',
      (context) => Navigator.of(context).pushNamed('login')),
  IndexNavigatorItem(
      '出租',
      'https://img2.baidu.com/it/u=3056639362,1046014518&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=870',
      (context) => Navigator.of(context).pushNamed('login')),
];
