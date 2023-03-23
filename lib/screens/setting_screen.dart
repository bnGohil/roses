import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roses/colors/app_colors.dart';
import 'package:roses/commen_widgets/CustomTextStyle.dart';
import 'package:roses/commen_widgets/custom_appbar.dart';
import 'package:roses/commen_widgets/images_widgets/svg_assets_image.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../commen_widgets/costom_switch_btn.dart';

enum SettingType {
  notification,
  invoices,
  privacyPolicy,
  termsAndConditions,
  aboutUs,
  logout,
}

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _switchValue = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<SettingPage> settingList = [
      SettingPage("Notification", switchBtn(), SettingType.notification),
      SettingPage(
          "Invoices",
          const SvgAssetsImageWidget(path: "assets/svg_image/back_vector.svg"),
          SettingType.invoices),
      SettingPage(
          "Privacy Policy",
          const SvgAssetsImageWidget(path: "assets/svg_image/back_vector.svg"),
          SettingType.privacyPolicy),
      SettingPage(
          "Terms and Conditions",
          const SvgAssetsImageWidget(path: "assets/svg_image/back_vector.svg"),
          SettingType.termsAndConditions),
      SettingPage(
          "About Us",
          const SvgAssetsImageWidget(path: "assets/svg_image/back_vector.svg"),
          SettingType.aboutUs),
      SettingPage(
          "Logout",
          const SvgAssetsImageWidget(path: "assets/svg_image/back_vector.svg"),
          SettingType.logout),
    ];
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppbar(
        height: height * 0.09,
        path: 'assets/svg_image/Vector.svg',
        text: 'Settings',
        path2: '',
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                final cat = settingList[index];
                switch (cat.settingType) {
                  case SettingType.notification:
                    break;
                  case SettingType.invoices:
                    break;
                  case SettingType.privacyPolicy:
                    break;
                  case SettingType.termsAndConditions:
                    break;
                  case SettingType.aboutUs:
                    break;
                  case SettingType.logout:
                    break;
                }
              },
              child: SizedBox(
                height: height * 0.08,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: width * 0.08),
                              Text(settingList[index].name,
                                  style: CustomTextStyle.nameText),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: settingList[index].widget,
                              ),
                              SizedBox(width: width * 0.08),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.001,
                      margin: EdgeInsets.only(
                          right: width * 0.06, left: width * 0.06),
                      decoration: BoxDecoration(
                          color: AppColors.black.withOpacity(0.1)),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: settingList.length),
    );
  }

  Widget switchBtn() {
    return CustomSwitchBtn(
      value: _switchValue,
      activeColor: AppColors.pink,
      valueChanged: (value) async {
        setState(() {
          _switchValue = value;
        });
      },
    );
  }
}

class SettingPage {
  final String name;
  final Widget widget;
  final SettingType settingType;
  SettingPage(this.name, this.widget, this.settingType);
}
