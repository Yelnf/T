import 'package:flutter/material.dart';

class RoomDetailPage extends StatelessWidget {
  final String roomid;
  const RoomDetailPage({super.key, required this.roomid});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$roomid')),
    );
  }
}
