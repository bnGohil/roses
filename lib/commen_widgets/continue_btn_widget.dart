import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import 'CustomTextStyle.dart';
import 'TextClass.dart';
class ContinueBtn extends StatefulWidget {
  final Function onClick;
  const ContinueBtn({Key? key, required this.onClick}) : super(key: key);

  @override
  State<ContinueBtn> createState() => _ContinueBtnState();
}

class _ContinueBtnState extends State<ContinueBtn> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {

        widget.onClick.call();
      },
      child: Container(
        height: height * 0.056,
        width: width * 0.84,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.pink
        ),
        child: Center(
          child: Text(TextClass.continueText, textAlign: TextAlign.center, style: CustomTextStyle.normalWhite)
        ),
      ),
    );
  }
}
