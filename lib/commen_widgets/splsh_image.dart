import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roses/colors/app_colors.dart';

import 'CustomTextStyle.dart';
class SplashImages extends StatelessWidget {
  const SplashImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pink,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 116,
                  child: SvgPicture.asset("assets/svg_image/logo.svg"),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 26.9,
                child: const Text("4\t\t\t\tE\t\t\t\tV\t\t\t\tE\t\t\t\tR",
                    textAlign: TextAlign.center,style: CustomTextStyle.everStyle),
              ),
              Container(
                height: 106,
                child: Text("ROSEs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.white,
                        fontFamily: "Lempicka-Display",
                        fontSize: 72,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400
                    )),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 120.70,
                    width: 239,
                    child: SvgPicture.asset("assets/svg_image/roses.svg",
                    fit: BoxFit.fill,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
