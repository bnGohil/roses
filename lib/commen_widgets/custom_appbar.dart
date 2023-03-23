import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roses/colors/app_colors.dart';
import 'package:roses/commen_widgets/CustomTextStyle.dart';
class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String path;
  final String text;
  final String path2;
  const CustomAppbar({Key? key, required this.height, required this.path, required this.text, required this.path2}) : super(key: key);
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: preferredSize.height,
      color: AppColors.background,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: w *  0.05,),
              SvgPicture.asset(path,color: AppColors.black),
            ],
          ),
          Text(text,style: CustomTextStyle.nameText),
          Row(
            children: [
              Container(
                  child: path2.isEmpty == true?
                  Container(height: h *  0.02,width: w * 0.04,)
                  :SvgPicture.asset(path2,color: AppColors.black)),
              SizedBox(width: w *  0.05,),
            ],
          )

        ],
      ),
    );
  }

}
