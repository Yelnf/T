import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/info/index.dart';

import '../../widget/search_bar/index.dart';

class TabInfo extends StatelessWidget {
  const TabInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          showLocation: false,
          goBackCallback: () {},
          onCancel: () {},
          showMap: true,
          onSearch: () {
            Navigator.of(context).pushNamed('search');
          },
          onSearchSubmit: (String value) {},
        ),
      ),
      body: ListView(children: [
        Info(),
        Info(),
        Info(),
        Info(),
      ]),
    );
  }
}
