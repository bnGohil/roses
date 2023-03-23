import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roses/commen_widgets/images_widgets/svg_assets_image.dart';
class RosesImages extends StatelessWidget {
  const RosesImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SvgAssetsImageWidget(path: "assets/svg_image/roses.svg");
  }
}
