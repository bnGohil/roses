import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roses/colors/app_colors.dart';
import 'package:roses/commen_widgets/CustomTextStyle.dart';
import 'package:roses/commen_widgets/TextClass.dart';
import 'package:roses/commen_widgets/bottem_bar_widget.dart';
import 'package:roses/commen_widgets/dash_bord_topbar_widget.dart';
import 'package:roses/commen_widgets/images_widgets/assets_image_widget.dart';
import 'package:roses/commen_widgets/images_widgets/svg_assets_image.dart';
import 'package:roses/commen_widgets/scrollebar_glow_widget.dart';
import 'package:roses/screens/setting_screen.dart';

import '../commen_widgets/integrated_widget.dart';
import '../commen_widgets/route_page_dashboard.dart';
class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<dynamic> countList = ['11','25','13','14','15'];
  var selectedValue  = "";
  var isVisible;
  final ScrollController scrollController = ScrollController();
  final HideNavbar hiding = HideNavbar();

 @override
  void dispose() {
    // TODO: implement dispose
   hiding.dispose();
    super.dispose();
  }
  @override
  void initState() {
    hiding.hideNaveBar();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(80/640);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ScrollConfiguration(
        behavior: AppBehavior(),
        child: CustomScrollView(
          controller: hiding.controller,
          slivers: [
            SliverAppBar(
              expandedHeight: height * 0.37,
              automaticallyImplyLeading: false,
              floating: true,
              snap: true,
              pinned: false,
              backgroundColor: AppColors.background,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    SizedBox(height: height *  0.071),
                    DashBoardTopBar(text: '${TextClass.email}', function: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen(),));
                    },),
                    SizedBox(height: height *  0.02),
                    Container(
                      height: height * 0.17,
                      width: width *  0.88,
                      decoration: BoxDecoration(
                          color: AppColors.pink,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _totalTextContTextWidget(count: "1000", countText: "On Hand Items"),
                          _lineWidget(),
                          _totalTextContTextWidget(count: "250", countText: "Drop Items"),
                          _lineWidget(),
                          _totalTextContTextWidget(count: "1000", countText: "Pick \n Items"),
                        ],
                      ),
                    ),
                    SizedBox(height: height *  0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: width * 0.08,),
                            Text(TextClass.routeListText,style: CustomTextStyle.nameText),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: height * 0.04,
                              decoration: BoxDecoration(
                                color: AppColors.textFiled,
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    icon: const Icon(Icons.arrow_drop_down,color: AppColors.black),
                                    style: CustomTextStyle.nameText,
                                    hint: Container(
                                        margin: EdgeInsets.only(left: width * 0.03),
                                        child: Text(TextClass.selectedRot,style: CustomTextStyle.nameText)),
                                    value: selectedValue.isNotEmpty ? selectedValue : null,
                                    items: countList.map((e) {
                                      return DropdownMenuItem(
                                          value: e,
                                          child: Container(
                                              margin: EdgeInsets.only(left: width * 0.03,right: width * 0.03),
                                              child: Text(e,style: CustomTextStyle.nameText,))
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedValue = value as String;
                                      });
                                    },)
                              ),
                            ),
                            SizedBox(width: width * 0.08,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate:
            SliverChildBuilderDelegate(
                      childCount: 20,
                    (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const RoutePageDashBord(),));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          margin: EdgeInsets.only(right: width * 0.05,left: width * 0.05,bottom: height * 0.01),
                          color: AppColors.white,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(height: height * 0.012),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: width *  0.03),
                                        Text("Monday, 17 Feb, 2021",style: CustomTextStyle.listBold,),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.01),
                                    _listTextWidget(text1: TextClass.routeNo, text2: "1325"),
                                    SizedBox(height: height * 0.01),
                                    _listTextWidget(text1: TextClass.totalPick, text2: "1325"),
                                    SizedBox(height: height * 0.01),
                                    _listTextWidget(text1: TextClass.totalDropOff, text2: "1325"),
                                    SizedBox(height: height * 0.012),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(height: height * 0.012),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(TextClass.stoppages,style: CustomTextStyle.pinkText,),
                                        SizedBox(width: width *  0.03),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: width *  0.04,right: width *  0.04),
                                          height: height * 0.04,
                                          decoration: BoxDecoration(
                                              color: AppColors.textFiled,
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: Row(
                                            children: [
                                              Text("Items :",style: CustomTextStyle.listBold,),
                                              Text("50",style: CustomTextStyle.listBold,),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: width *  0.03),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: width *  0.04,right: width *  0.04),
                                          height: height * 0.04,
                                          decoration: BoxDecoration(
                                              color: AppColors.green,
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: Center(child: Text(TextClass.completed,style: CustomTextStyle.whiteBold700)),
                                        ),
                                        SizedBox(width: width *  0.03),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.01),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: hiding.visible,
        builder: (context, value, child) {
         return AnimatedContainer(
             duration: const Duration(milliseconds: 500),
             height: value ? height * 0.12: 0.0,
             child: BottomBarWidget()
         );
         },
      ),
    );
  }
  Widget _totalTextContTextWidget({required String count, required String countText}){
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Column(
      children: [
       SizedBox(height: height * 0.03),
        SizedBox(
          width: width * 0.16,
          height: height * 0.05,
          child: Text(count,style: TextStyle(
              color: AppColors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontFamily: "Futura PT - Bold"
          )),

        ),
        SizedBox(height:  height * 0.003),
        SizedBox(
          width: width * 0.16,
          child: Text(countText,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontFamily: "Futura PT - Bold"
              )),

        )
      ],
    );
  }
  Widget _lineWidget(){
    double height = MediaQuery.of(context).size.height;
    return  Container(
        margin: EdgeInsets.only(top: height * 0.04),
        child: SvgAssetsImageWidget(path: "assets/svg_image/Line.svg"));
  }
  Widget _listTextWidget({required String text1,required String text2}){
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: width *  0.03),
        Text(text1,style: CustomTextStyle.listLight,),
        Expanded(child: Text(text2,style: CustomTextStyle.listBold,)),
      ],
    );
  }

}
