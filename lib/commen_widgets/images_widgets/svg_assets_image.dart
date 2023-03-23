import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SvgAssetsImageWidget extends StatelessWidget {
  final String path;
  const SvgAssetsImageWidget({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(path);
  }
}
