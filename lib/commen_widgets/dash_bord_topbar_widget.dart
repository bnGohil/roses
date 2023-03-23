import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import 'CustomTextStyle.dart';
import 'TextClass.dart';
import 'images_widgets/assets_image_widget.dart';
import 'images_widgets/svg_assets_image.dart';
class DashBoardTopBar extends StatefulWidget {
  final String text;
  final Function function;
  const DashBoardTopBar({Key? key, required this.text, required this.function}) : super(key: key);

  @override
  State<DashBoardTopBar> createState() => _DashBoardTopBarState();
}

class _DashBoardTopBarState extends State<DashBoardTopBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height *  0.07,
      child: Row(
        children: [
          SizedBox(width: width *  0.05),
          Container(
              height: height *  0.07,
              width: width *  0.14,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: const AssetsImageWidget(path: "assets/png_image/Ellipse.png")
          ),
          SizedBox(width: width *  0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(TextClass.name,style: CustomTextStyle.nameText),
              SizedBox(
                  width: width * 0.35,
                  child: Text(widget.text,style: CustomTextStyle.emailText)),
            ],
          ),
          SizedBox(width: width *  0.21),
          Column(
            children: [
              SizedBox(height: height *  0.020),
              InkWell(
                  onTap: () {
                    widget.function.call();
                  },
                  child: const SvgAssetsImageWidget(path: "assets/svg_image/fi-rr-settings.svg")),

            ],
          ),
          SizedBox(width: width *  0.05),
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: height *  0.020),
                  const SvgAssetsImageWidget(path: "assets/svg_image/ball.svg"),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: width * 0.015,right: width * 0.015),
                    margin: EdgeInsets.only(left: width * 0.015,top: height *  0.010),
                    height: height * 0.02,
                    decoration: BoxDecoration(
                        color: AppColors.pink,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: const Center(
                      child: Text("1",style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 8
                      ),),
                    ),
                  ),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}
