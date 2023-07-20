import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter02/lib/pages/home/tab_proflie/funtion_button_data.dart';
import 'package:flutter02/lib/widget/common_image.dart';

class FuntionButtonWidget extends StatelessWidget {
  final FunctionButtonItem data;
  const FuntionButtonWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (() {
          if (data.onTapHandle != null) {
            data.onTapHandle();
          }
        }),
        child: Container(
          margin: EdgeInsets.only(top: 30.0, left: 30.0),
          child: Column(
            children: [
              CommonImage(
                  src: data.imageUrl,
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 80.0,
                  fit: BoxFit.fill),
              Text(data.title),
            ],
          ),
        ));
  }
}
