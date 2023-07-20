import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';

class IndexRecommandItem {
  final title;
  final subTitle;
  final imageUrl;
  final navigateUrl;

  const IndexRecommandItem(
      this.title, this.subTitle, this.imageUrl, this.navigateUrl);
}

const List<IndexRecommandItem> indexRecommandData = [
  IndexRecommandItem(
      '桃子乐园',
      '归属的感觉',
      'https://pic.rmb.bdstatic.com/12a1c419178e03ad4d229a0172d4aa03.jpg@wm_1,k_YmpoX3F1YW5qaW5nd2F0ZXIucG5n',
      'login'),
  IndexRecommandItem(
      '世外桃源',
      '休闲生活',
      'https://img0.baidu.com/it/u=61183202,3425279497&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
      'login'),
  IndexRecommandItem(
      '交通便利',
      '出行方便',
      'https://img0.baidu.com/it/u=1545445478,3907186128&fm=253&fmt=auto&app=138&f=PNG?w=1167&h=500',
      'login'),
  IndexRecommandItem(
      '远离喧嚣',
      '舒适的居住环境',
      'https://img1.baidu.com/it/u=435898096,3089855803&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500',
      'login'),
];
