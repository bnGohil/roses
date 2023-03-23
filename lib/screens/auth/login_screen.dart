import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roses/colors/app_colors.dart';
import 'package:roses/commen_widgets/CustomTextStyle.dart';
import 'package:roses/commen_widgets/TextClass.dart';
import 'package:roses/commen_widgets/continue_btn_widget.dart';
import 'package:roses/commen_widgets/logo_image_widget.dart';
import 'package:roses/commen_widgets/splsh_image.dart';

import '../../commen_widgets/four_ever_roses_widget.dart';
import '../../commen_widgets/otp_widget.dart';
import '../../commen_widgets/roses_image_widgets.dart';
import 'otp_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body:SingleChildScrollView(
          child: Stack(
            children: [
              FourEverRosesWidget(),
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
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.0625),
                      Row(
                        children: [
                          SizedBox(width: width * 0.08,),
                          Text(TextClass.logInText,textAlign: TextAlign.center,
                            style: CustomTextStyle.boldBigBlack,
                          ),

                        ],
                      ),
                      SizedBox(height: height * 0.06,),
                      Row(
                        children: [
                          SizedBox(width: width * 0.08,),
                          Text(TextClass.mobilNum,style: CustomTextStyle.normalBlack,)
                        ],
                      ),
                      SizedBox(height: height * 0.01),
                      Container(
                        height: height * 0.06,
                        width: width * 0.83,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: AppColors.textFiled),
                        child: TextFormField(
                          style: CustomTextStyle.normalBlack,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(20.0),
                              border: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none
                          ),

                        ),
                      ),
                      SizedBox(height: height * 0.04),
                       ContinueBtn(
                         onClick: ()async{
                          // await Future.delayed(const Duration(seconds: 5));
                         Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(),));
                       },),
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
