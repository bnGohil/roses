import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roses/colors/app_colors.dart';
import 'package:roses/commen_widgets/CustomTextStyle.dart';
import 'package:roses/commen_widgets/logo_image_widget.dart';
import 'package:roses/commen_widgets/roses_image_widgets.dart';
import 'package:roses/commen_widgets/splsh_image.dart';
import '../commen_widgets/TextClass.dart';
import 'auth/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.pink,
        body: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
          },
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: SizedBox(
                      height: 116,
                      child: LogoImage()
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 26.9,
                    child: Text(TextClass.everText,
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.everStyle
                    ),
                  ),
                  SizedBox(
                    height: 106,
                    child: Text(TextClass.rosesText,
                        textAlign: TextAlign.center,
                        style:  CustomTextStyle.bigFourEverText
                    ),
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
                        child: RosesImages()
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
