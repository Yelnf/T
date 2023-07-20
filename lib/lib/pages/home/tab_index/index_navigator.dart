import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/tab_index/index_navigator_item.dart';
import 'package:flutter02/lib/widget/common_image.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: navigatorItemList
              .map((item) => InkWell(
                    onTap: () {
                      item.onTap(context);
                    },
                    child: Column(
                      children: [
                        CommonImage(
                          src: item.imageUrl,
                          width: 50,
                          height: 50,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          item.title,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14.0),
                        ),
                      ],
                    ),
                  ))
              .toList()),
    );
  }
}
