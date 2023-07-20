import 'package:flutter/material.dart';

class FunctionButtonItem {
  final String imageUrl;
  final String title;
  final Function() onTapHandle;

  FunctionButtonItem(this.imageUrl, this.title, this.onTapHandle);
}

final List<FunctionButtonItem> list = [
  FunctionButtonItem(
      'https://img1.baidu.com/it/u=3835729376,463290148&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
      '看房记录',
      () => null),
  FunctionButtonItem(
      'https://img0.baidu.com/it/u=3723750712,990965047&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=532',
      '订单',
      () => null),
  FunctionButtonItem(
      'https://img2.baidu.com/it/u=2013586777,2808426406&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
      '收藏',
      () => null),
  FunctionButtonItem(
      'https://img2.baidu.com/it/u=1592555978,2257484961&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
      '身份认证',
      () => null),
  FunctionButtonItem(
      'https://img0.baidu.com/it/u=2547735653,2921682335&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=530',
      '联系我们',
      () => null),
  FunctionButtonItem(
      'https://img1.baidu.com/it/u=1738893141,1046616909&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
      '电子合同',
      () => null),
  FunctionButtonItem(
      'https://img0.baidu.com/it/u=2387272555,2785044229&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=800',
      '房屋管理',
      () => null),
  FunctionButtonItem(
      'https://bpic.51yuansu.com/pic2/cover/00/41/63/58135f1f79502_610.jpg',
      '钱包',
      () => null),
];
