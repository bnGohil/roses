import 'package:flutter/material.dart';
class AssetsImageWidget extends StatelessWidget {
  final String path;
  const AssetsImageWidget({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(path,fit: BoxFit.fill);
  }
}
