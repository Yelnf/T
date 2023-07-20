import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/tab_index/index_recommand_item.dart';

class SearchBar extends StatefulWidget {
  final bool showLocation;
  final Function() goBackCallback;
  final String inputValue = '';
  final String defaultImputValue = '请输入搜索词';
  final Function() onCancel;
  final bool showMap;
  final Function() onSearch;
  final ValueChanged<String> onSearchSubmit;

  const SearchBar({
    super.key,
    required this.showLocation,
    required this.goBackCallback,
    required this.onCancel,
    required this.showMap,
    required this.onSearch,
    required this.onSearchSubmit,

    // required this.inputValue,
    // required this.defaultImputValue,
    // required this.onCancel,
    // required this.showMap,
    // required this.onSearch,
    // required this.onSearchSubmit
  });

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _searchWord = '';
  late TextEditingController _controller;
  late FocusNode _focus;
  Function? _onClean() {
    setState(() {
      _controller.clear();
      _searchWord = '';
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _focus = FocusNode();
    _controller = TextEditingController(text: widget.inputValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        if (widget.showLocation != null)
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {},
              child: Row(children: [
                Icon(
                  Icons.room_outlined,
                  color: Colors.green,
                  size: 18.0,
                ),
                Text(
                  '北京',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ]),
            ),
          ),
        if (widget.goBackCallback != null || true)
          Padding(
            padding: const EdgeInsets.only(right: 7.0),
            child: Container(
              height: 100.0,
              width: 200.0,
              child: GestureDetector(
                onTap: widget.goBackCallback,
                child: Row(children: [
                  Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 18.0,
                  ),
                  Expanded(
                      child: Container(
                          height: 34.0,
                          decoration: BoxDecoration(
                              color: Colors.pink[400],
                              borderRadius: BorderRadius.circular(17.0)),
                          padding: EdgeInsets.only(right: 10.0),
                          child: TextField(
                              focusNode: _focus,
                              onTap: () {
                                if (widget.onSearchSubmit == null) {
                                  _focus.unfocus();
                                }
                                widget.onSearch();
                              },
                              onSubmitted: widget.onSearchSubmit,
                              textInputAction: TextInputAction.search, //激活键盘
                              controller: _controller,
                              style: TextStyle(fontSize: 14.0),
                              onChanged: (value) {
                                setState(() {
                                  _searchWord = value;
                                });
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '请输入关键词',
                                hintStyle: TextStyle(
                                    fontSize: 14.0, color: Colors.grey),
                                contentPadding:
                                    EdgeInsets.only(left: 10.0, top: 4.0),
                                suffixIcon: GestureDetector(
                                  onTap: (() {
                                    _onClean();
                                  }),
                                  child: Icon(
                                    Icons.clear,
                                    size: 18.0,
                                    color: _searchWord == ''
                                        ? Colors.grey[200]
                                        : Colors.grey,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 1.0),
                                  child: Icon(
                                    Icons.search,
                                    size: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ))))
                ]),
              ),
            ),
          ),
        if (widget.onCancel != Null)
          Row(
            children: [
              GestureDetector(
                onTap: widget.onCancel,
                child: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    '取消',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
              Icon(Icons.location_on_rounded),
            ],
          )
        else if (widget.showMap != null)
          GestureDetector(
            onTap: () {},
          ),
      ]),
    );
  }
}
