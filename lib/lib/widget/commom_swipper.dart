import 'package:flutter/material.dart';
import 'package:flutter02/lib/widget/common_image.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const List<String> Images = [
  'https://image1.ljcdn.com/spider-search-image/cc39d448a2df0c885732ad0267b513fc.jpg',
  'https://image1.ljcdn.com/spider-search-image/249a9bbaa12014d02b6e289599aae462.jpg',
  'https://image1.ljcdn.com/spider-search-image/f549fc043d9a2a69111e572f1fd78480.jpg'
];

class CommonSwipper extends StatelessWidget {
  final List<String> images;
  const CommonSwipper({super.key, this.images = Images});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Swiper(
              itemBuilder: (context, index) {
                return CommonImage(
                  src: images[index],
                  fit: BoxFit.fill,
                  width: 50,
                  height: 50,
                );
              },
              itemCount: 3,
              pagination: new SwiperPagination(),
              control: new SwiperControl(),
              autoplay: true,
            )));
  }
}
