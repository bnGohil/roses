import 'package:flutter/material.dart';
import 'package:roses/colors/app_colors.dart';
import 'package:roses/commen_widgets/bottem_bar_widget.dart';
import 'package:roses/commen_widgets/scrollebar_glow_widget.dart';
import 'package:roses/screens/route_details.dart';
import '../screens/setting_screen.dart';
import 'CustomTextStyle.dart';
import 'TextClass.dart';
import 'dash_bord_topbar_widget.dart';
import 'integrated_widget.dart';
class RoutePageDashBord extends StatefulWidget {
  const RoutePageDashBord({Key? key}) : super(key: key);

  @override
  State<RoutePageDashBord> createState() => _RoutePageDashBordState();
}

class _RoutePageDashBordState extends State<RoutePageDashBord> {
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
    print(134/640);
    return Scaffold(
      body: ScrollConfiguration(
          behavior: AppBehavior(),
          child: CustomScrollView(
            controller: hiding.controller,
            slivers: [
              SliverAppBar(
                expandedHeight: height * 0.15,
                automaticallyImplyLeading: false,
                floating: true,
                snap: true,
                pinned: false,
                backgroundColor: AppColors.background,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      SizedBox(height: height *  0.071),
                      DashBoardTopBar(text: '6353770215', function: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen(),));
                      },),
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                      childCount: 20,
                          (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RouteDetails(),));
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: width * 0.05,left: width * 0.05),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
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
                                            Text("Route 1",style: TextStyle(
                                              color: AppColors.black,
                                              fontFamily: "Futura PT - Bold",
                                              fontSize: 22,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600,
                                            )),
                                          ],
                                        ),
                                        SizedBox(height: height * 0.01),
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
                          ),
                        );
                      })),
            ],
          )),
      backgroundColor: AppColors.background,
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
