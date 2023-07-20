import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/tab_search/data_list.dart';

import '../../../widget/room_list_item.dart';
import '../../../widget/search_bar/index.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({super.key});

  @override
  State<TabSearch> createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          showLocation: true,
          goBackCallback: () {},
          onCancel: () {},
          showMap: true,
          onSearch: () {
            Navigator.of(context).pushNamed('search');
          },
          onSearchSubmit: (String value) {},
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            child: Text('fliterBar'),
          ),
          Expanded(
              child: ListView(
            children:
                datalist.map((item) => RoomListItemWidget(data: item)).toList(),
          ))
        ],
      ),
    );
  }
}
