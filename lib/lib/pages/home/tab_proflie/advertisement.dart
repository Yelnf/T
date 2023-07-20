import 'package:flutter/material.dart';
import 'package:flutter02/lib/widget/common_image.dart';

class Advertisement extends StatelessWidget {
  const Advertisement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10.0),
        child: CommonImage(
            src:
                'https://picnew8.photophoto.cn/20131219/yurongfuguanggaotupian-18501401_1.jpg',
            width: MediaQuery.of(context).size.width,
            height: 80.0,
            fit: BoxFit.fill));
  }
}
