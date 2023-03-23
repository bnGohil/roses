import 'package:flutter/material.dart';
import 'package:roses/colors/app_colors.dart';
import 'package:roses/commen_widgets/custom_appbar.dart';
class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  final myCats = [
    MyCat("Dom", CatType.black),
    MyCat("Tom", CatType.white),
    MyCat("Jerry", CatType.white),
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppbar(height: height * 0.09, path: 'assets/svg_image/Vector.svg', text: 'Settings', path2: '',),
      extendBodyBehindAppBar: false,
      body: ListView.builder(itemBuilder: (context, index) {
        final cat = myCats[index];
        return InkWell(
          onTap: () {
            switch(cat.type){
              case CatType.black:
                print("This is tom it is black");
                break;
              case CatType.white:
                print("This is dom it is white");
                break;
            }
          },
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(cat.name),
        ));

      },itemCount: myCats.length),
    );
  }
}


class MyCat {
  final String name;
  final CatType type;

  MyCat(this.name, this.type);
}

enum CatType {
  black,
  white
}

extension CatExtension on CatType{
  String get name{
    switch (this){
      case CatType.black:
        return 'Mr Black Cat';
      case CatType.white:
        return 'Ms White Cat';
      default:
        return "";
    }
  }
}