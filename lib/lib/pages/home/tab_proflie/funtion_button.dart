import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/tab_proflie/funtion_button_data.dart';
import 'package:flutter02/lib/pages/home/tab_proflie/funtion_button_widget.dart';

class FuntionButton extends StatelessWidget {
  const FuntionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 30.0,
        runSpacing: 30.0,
        children: list.map((item) => FuntionButtonWidget(data: item)).toList(),
      ),
    );
  }
}
