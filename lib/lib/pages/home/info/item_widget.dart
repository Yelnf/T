import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/info/data.dart';
import 'package:flutter02/lib/widget/common_image.dart';

var textStyle = TextStyle(color: Colors.black54);

class ItemWidget extends StatelessWidget {
  final InfoItem data;
  const ItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Row(
        children: [
          CommonImage(
              src: data.imageUrl, width: 120, height: 90, fit: BoxFit.fill),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.title,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data.source,
                    style: textStyle,
                  ),
                  Text(
                    data.time,
                    style: textStyle,
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
