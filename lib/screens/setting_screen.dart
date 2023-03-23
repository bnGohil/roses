import 'package:flutter/material.dart';
import 'package:roses/colors/app_colors.dart';
import 'package:roses/commen_widgets/CustomTextStyle.dart';
import 'package:roses/commen_widgets/custom_appbar.dart';
import 'package:roses/commen_widgets/images_widgets/svg_assets_image.dart';
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
  List<SettingPage> settingList = [
    SettingPage("Notification", Container(), SettingType.notification),
    SettingPage("Invoices", const SvgAssetsImageWidget(path: "assets/svg_image/back_vector.svg"), SettingType.notification),
    SettingPage("Privacy Policy", const SvgAssetsImageWidget(path: "assets/svg_image/back_vector.svg"), SettingType.notification),
    SettingPage("Terms and Conditions", const SvgAssetsImageWidget(path: "assets/svg_image/back_vector.svg"), SettingType.notification),
    SettingPage("About Us", const SvgAssetsImageWidget(path: "assets/svg_image/back_vector.svg"), SettingType.notification),
    SettingPage("Logout", const SvgAssetsImageWidget(path: "assets/svg_image/back_vector.svg"), SettingType.notification),
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print("my withnskjjcbh ${30/360}");
    return  Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppbar(height: height * 0.09, path: 'assets/svg_image/Vector.svg', text: 'Settings', path2: '',),
      body: ListView.separated(
          itemBuilder: (context, index) {
           return Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(
                 children: [
                   SizedBox(width: width * 0.08),
                   Text(settingList[index].name,style: CustomTextStyle.nameText),
                 ],
               ),
               Row(
                 children: [
                   Container(child: settingList[index].widget,),
                   SizedBox(width: width * 0.08),
                 ],
               ),

             ],
           );
      }, separatorBuilder: (context, index) {
        return Divider();
      }, itemCount: settingList.length),
    );
  }
}
class SettingPage {
 final String name;
 final Widget widget;
 final SettingType settingType;
 SettingPage(this.name, this.widget, this.settingType);
  
}