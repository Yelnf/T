import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/tab_index/index_recommand_data.dart';
import 'index_recommand_item.dart';

class IndexRecommand extends StatelessWidget {
  final List<IndexRecommandItem> dataList;
  const IndexRecommand({super.key, this.dataList = indexRecommandData});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(color: Colors.grey[300]),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '房屋推荐',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                Text(
                  '更多',
                  style: TextStyle(color: Colors.black45),
                )
              ],
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: dataList
                    .map<Widget>((item) => IndexRecommandItemWidget(data: item))
                    .toList())
          ],
        ));
  }
}
