import 'package:flutter/material.dart';
import 'package:roses/colors/app_colors.dart';
import 'package:roses/commen_widgets/CustomTextStyle.dart';
import 'package:roses/commen_widgets/TextClass.dart';
import 'package:roses/commen_widgets/bottem_bar_widget.dart';
import 'package:roses/commen_widgets/custom_appbar.dart';
import 'package:roses/commen_widgets/images_widgets/svg_assets_image.dart';
import 'package:roses/commen_widgets/scrollebar_glow_widget.dart';

import '../commen_widgets/integrated_widget.dart';
class RouteDetails extends StatefulWidget {
  const RouteDetails({Key? key}) : super(key: key);

  @override
  State<RouteDetails> createState() => _RouteDetailsState();
}

class _RouteDetailsState extends State<RouteDetails> {
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
    print("height is ${10/640}");
    print("width is ${10/360}");
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          ScrollConfiguration(
              behavior: AppBehavior(),
              child: CustomScrollView(
                controller: hiding.controller,
                slivers: [
                  SliverAppBar(
                    expandedHeight: height * 0.24,
                    automaticallyImplyLeading: false,
                    floating: true,
                    snap: true,
                    pinned: false,
                    backgroundColor: AppColors.background,
                    flexibleSpace: FlexibleSpaceBar(
                     background: Column(
                       children: [
                         Column(
                           children: [
                             CustomAppbar(height: height * 0.12, path: "assets/svg_image/Vector.svg", text: "Route Details", path2: "assets/svg_image/loc.svg"),
                             Container(
                               height: 2,
                               color: Colors.black.withOpacity(0.1),
                             ),
                             SizedBox(
                                 height: height * 0.04,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     textWidget(name:TextClass.routeNo, count: "135"),
                                     Container(height: height * 0.035,width: width * 0.005,color: Colors.black.withOpacity(0.1)),
                                     textWidget(name:TextClass.pickNo, count: "10"),
                                     Container(height: height * 0.035,width: width * 0.005,color: Colors.black.withOpacity(0.1)),
                                     textWidget(name:TextClass.dropNo, count: "07"),
                                   ],
                                 )
                             ),
                             Container(
                               height: 2,
                               color: Colors.black.withOpacity(0.1),
                             ),
                           ],
                         ),
                         SizedBox(height: height * 0.02),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                               children: [
                                 SizedBox(width: width * 0.05,),
                                 Text("Monday, 17 Feb, 2021",style: CustomTextStyle.listBold),
                               ],
                             ),
                             Row(
                               children: [
                                 Text(TextClass.item,style: CustomTextStyle.pinkText18,),
                                 Text("50",style: CustomTextStyle.pinkText18,),
                                 SizedBox(width: width * 0.05,),
                               ],
                             )
                           ],
                         )
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
                           //     Navigator.push(context, MaterialPageRoute(builder: (context) => const RoutePageDashBord(),));
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                margin: EdgeInsets.only(right: width * 0.05,left: width * 0.05,bottom: height * 0.01),
                                color: AppColors.white,
                                child: Column(
                                  children: [
                                    Row(
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
                                                  Text("Abstergo Ltd",style: CustomTextStyle.listBold,),
                                                ],
                                              ),
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
                                                  Text(TextClass.shopCode,style: CustomTextStyle.pinkText,),
                                                  SizedBox(width: width *  0.03),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height:  height *  0.01,),
                                    Column(
                                      children: [
                                        listTextWidget(widget: const SvgAssetsImageWidget(path: "assets/svg_image/fi-rr-user.svg"), text: "Floyd Miles"),
                                        SizedBox(height: height * 0.004),
                                        listTextWidget(widget: SizedBox(
                                            width: width * 0.03,
                                            height: height * 0.02,
                                            child: const SvgAssetsImageWidget(path: "assets/svg_image/loc.svg")), text: "8502 Preston Rd. Inglewood, Maine 98380,8502 Preston Rd. Inglewood, Maine 98380"),
                                        SizedBox(height: height * 0.004),
                                        listTextWidget(widget: Container(
                                            margin: EdgeInsets.only(
                                              top: height * 0.004),
                                            child: const SvgAssetsImageWidget(path: "assets/svg_image/fi-rr-inbox.svg")), text: "(308) 555-0121"),
                                        SizedBox(height: height * 0.004),
                                        listTextWidget(widget: Container(
                                        margin: EdgeInsets.only(
                                              top: height * 0.004),
                                            child: SvgAssetsImageWidget(path: "assets/svg_image/email.svg")), text: "michael.mitc@example.com"),
                                        SizedBox(height: height *  0.015),
                                        Divider(height: height * 0.001,color: AppColors.black.withOpacity(0.3),endIndent: 13,indent: 13,),
                                       Stack(
                                         children: [
                                           Column(
                                             children: [
                                               SizedBox(height: height *  0.015),
                                               lightListText(text1: TextClass.city, text2: "Ohio"),
                                               SizedBox(height: height *   0.004),
                                               lightListText(text1: TextClass.state, text2: "Louisiana"),
                                               SizedBox(height: height *   0.004),
                                               lightListText(text1: TextClass.country, text2: "Nintendo"),
                                               SizedBox(height: height * 0.012),
                                             ],
                                           ),
                                           Positioned(
                                             left: 00,
                                             right: width * 0.03,
                                             bottom: height * 0.015,
                                             child: Row(
                                               mainAxisAlignment: MainAxisAlignment.end,
                                               children: [
                                                 button(text: "Completed"),
                                               ],
                                             ),
                                           )
                                         ],
                                       )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }))
                ],
              ))
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: hiding.visible,
        builder: (context, value, child) {
          return AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: value ? height * 0.12: 0.0,
              child: const BottomBarWidget()
          );
        },
      ),
    );
  }
  Widget textWidget({required String name, required String count}){
    return  Row(
      children: [
        Text(name,style: CustomTextStyle.totalText,),
        Text(count,style: CustomTextStyle.listBold,),
      ],
    );
  }
  Widget listTextWidget({required Widget widget,required String text}){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
     return Row(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        SizedBox(width: width * 0.03),
         Container(
          margin: EdgeInsets.only(top: height * 0.001),
          child: widget,
        ),
         SizedBox(width: width * 0.02),
        Expanded(child: Text(text,style: CustomTextStyle.totalText))
       ],
     );
  }
  Widget lightListText({required String text1, required String text2}){
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: width * 0.03),
        Container(
          child: Text(text1,style: CustomTextStyle.listLight),
        ),
        SizedBox(width: width * 0.02),
        Expanded(child: Text(text2,style: CustomTextStyle.listBold))
      ],
    );
  }
  Widget button({required String text}){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        right: width * 0.04,
        left: width * 0.04
      ),
      height: height * 0.03,
      // width:  width * 0.25,
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.circular(3)
      ),
      child: Center(child: Text(text,style: CustomTextStyle.whiteBold700)),
    );
  }
}
