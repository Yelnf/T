import 'package:flutter/cupertino.dart';

class InfoItem {
  final String title;
  final String imageUrl;
  final String source;
  final String time;
  final String navigatorUrl;

  const InfoItem(
      this.title, this.imageUrl, this.source, this.time, this.navigatorUrl);
}

const List<InfoItem> infoData = [
  InfoItem(
      '置业选择 | 安贞西里 三室一厅 河间的古雅别院',
      'https://pic1.ajkimg.com/display/anjuke/93a4d6ef27858b8b1e41c77c1049ca50/240x180c.jpg?t=1&srotate=1',
      '新华网',
      '两天前',
      'login'),
  InfoItem(
      '置业选择 | 安居小屋 花园洋房 清新别墅',
      'https://img2.baidu.com/it/u=3392392175,4171294906&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500',
      '新华网',
      '两天前',
      'login'),
  InfoItem(
      '置业选择 | 大理王宫 苍山洱海间的古雅别院',
      'https://q.bstatic.com/images/hotel/max1024x768/795/79506143.jpg',
      '新华网',
      '一周前',
      'login'),
  InfoItem(
      '置业选择 | 安贞西里 三室一厅 河间的古雅别院',
      'https://img1.qunarzz.com/travel/d3/1702/e1/2d571b5d0fee7b5.jpg_r_720x480x95_d6088056.jpg',
      '新华网',
      '两天前',
      'login'),
];
