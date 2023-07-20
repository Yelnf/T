import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/tab_search/data_list.dart';
import 'package:flutter02/lib/widget/common_image.dart';
import 'package:flutter02/lib/widget/common_tag.dart';

class RoomListItemWidget extends StatelessWidget {
  final RoomListItemData data;
  const RoomListItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Row(
        children: [
          CommonImage(
              src: data.imageUrl, width: 132.5, height: 80.0, fit: BoxFit.fill),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(data.subTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w600)),
              Wrap(
                children: data.tags.map((item) => CommonTag(item)).toList(),
              ),
              Text(
                '${data.price}元/月',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
