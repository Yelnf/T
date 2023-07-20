import 'package:flutter/material.dart';

class CommonTag extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? backgroundcolor;
  const CommonTag.origin(
      {super.key,
      required this.title,
      this.color = Colors.black,
      this.backgroundcolor = Colors.yellow});

  factory CommonTag(String title) {
    switch (title) {
      case '近地铁':
        return CommonTag.origin(
          title: title,
          color: Colors.red,
          backgroundcolor: Colors.red[100],
        );
      case '随时看房':
        return CommonTag.origin(
          title: title,
          color: Colors.blue,
          backgroundcolor: Colors.blue[100],
        );
      case '新上':
        return CommonTag.origin(
          title: title,
          color: Colors.orange,
          backgroundcolor: Colors.amber[100],
        );
      default:
        return CommonTag.origin(title: title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.0),
      padding: EdgeInsets.only(left: 4.0, right: 4.0, top: 2.0),
      decoration: BoxDecoration(
          color: backgroundcolor, borderRadius: BorderRadius.circular(3.0)),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 12.0, color: color, fontWeight: FontWeight.w500),
      ),
    );
  }
}
