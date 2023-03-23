import 'package:flutter/material.dart';
import 'package:roses/commen_widgets/roses_image_widgets.dart';

import '../colors/app_colors.dart';
import 'CustomTextStyle.dart';
import 'TextClass.dart';
import 'logo_image_widget.dart';
class FourEverRosesWidget extends StatelessWidget {
  const FourEverRosesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.45,
      color: AppColors.pink,
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: height * 0.09375,),
              Center(
                child: Container(
                  height: height * 0.12,
                  width: width * 0.23,
                  child: LogoImage(),

                ),
              ),
              SizedBox(height: height * 0.02,),
              const Center(child: SizedBox(child: Text(TextClass.everText, style: CustomTextStyle.smallFourEverStyle),)),
              const Center(child: Text(TextClass.rosesText,style: CustomTextStyle.smallRosesText))
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 35,
            child: Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                  height: width * 0.36,
                  width: width * 0.36,child: const RosesImages()
              ),
            ),
          )
        ],
      ),
    );
  }
}
