import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';

final networkUriReg = RegExp('^http');
final localUriReg = RegExp('^static');

class CommonImage extends StatelessWidget {
  final String src;
  final double width;
  final double height;
  final BoxFit fit;
  const CommonImage(
      {super.key,
      required this.src,
      required this.width,
      required this.height,
      required this.fit});

  @override
  Widget build(BuildContext context) {
    if (networkUriReg.hasMatch(src)) {
      return Image(
        image: AdvancedNetworkImage(
          src,
          useDiskCache: true,
          cacheRule: CacheRule(maxAge: Duration(days: 7)),
          timeoutDuration: Duration(seconds: 20),
        ),
        width: width,
        height: height,
        fit: fit,
      );
    }

    if (localUriReg.hasMatch(src)) {
      return Image.asset(
        src,
        width: width,
        height: height,
        fit: fit,
      );
    }
    assert(false, 'illegal');
    return Container();
  }
}
