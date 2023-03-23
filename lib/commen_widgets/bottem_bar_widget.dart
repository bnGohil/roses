import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import 'CustomTextStyle.dart';
import 'images_widgets/svg_assets_image.dart';
class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      child:  Material(
        color: AppColors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15))
        ),
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: height * 0.02),
                  Text("Total Collection",style: CustomTextStyle.totalText,),
                  Text("\$1500",style: CustomTextStyle.boldBigBlack700,),
                ],
              ),
            ),
            Container(
              color: AppColors.black.withOpacity(0.2),
              child: const SvgAssetsImageWidget(path: "assets/svg_image/Line.svg"),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: height * 0.02),
                  Text("Total Debt",style: CustomTextStyle.totalText,),
                  Text("\$1230",style: CustomTextStyle.boldBigBlack700,),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
