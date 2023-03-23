import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roses/commen_widgets/continue_btn_widget.dart';
import 'package:roses/commen_widgets/four_ever_roses_widget.dart';
import 'package:roses/commen_widgets/otp_widget.dart';
import '../../colors/app_colors.dart';
import '../../commen_widgets/CustomTextStyle.dart';
import '../../commen_widgets/TextClass.dart';
import '../../commen_widgets/roses_image_widgets.dart';
import '../dash_board.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String value = "";
  int limit = 6;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                SizedBox(width: width *  0.06),
                SvgPicture.asset("assets/svg_image/Vector.svg")
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: height * 0.45,
                color: AppColors.pink,
                child: Stack(
                  children: [
                    const FourEverRosesWidget(),
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
              ),
              Column(
                children: [
                  SizedBox(
                    height: (height * 0.45) - 35,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35)
                        )
                    ),
                    child:  Column(
                      children: [
                        SizedBox(height: height * 0.0625),
                        Row(
                          children: [
                            SizedBox(width: width * 0.08,),
                            Text(TextClass.enterOtpText,textAlign: TextAlign.center,
                              style: CustomTextStyle.boldBigBlack,
                            ),

                          ],
                        ),
                        SizedBox(height: height * 0.06,),
                        Row(
                          children: [
                            SizedBox(width: width * 0.08,),
                            Text(TextClass.otpText,style: CustomTextStyle.normalBlack,)
                          ],
                        ),
                        SizedBox(height: height * 0.015),
                        OtpWidget(onChanged: (value) {}),
                        SizedBox(height: height * 0.042),
                        ContinueBtn(onClick: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard(),));
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }

}
