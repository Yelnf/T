import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/tab_index/index_recommand_data.dart';
import 'package:flutter02/lib/widget/common_image.dart';

var textStyle = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);

class IndexRecommandItemWidget extends StatelessWidget {
  final IndexRecommandItem data;

  const IndexRecommandItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (() {
          Navigator.of(context).pushNamed(data.navigateUrl);
        }),
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          width: (MediaQuery.of(context).size.width - 10.0 * 3) / 2,
          height: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    data.title,
                    style: textStyle,
                  ),
                  Text(
                    data.subTitle,
                    style: textStyle,
                  )
                ],
              ),
              CommonImage(
                  src: data.imageUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover)
            ],
          ),
        ));
  }
}
