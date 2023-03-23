import 'package:flutter/material.dart';
import 'package:roses/colors/app_colors.dart';
class CustomSwitchBtn extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> valueChanged;
  final Color activeColor;
  const CustomSwitchBtn({Key? key, required this.value, required this.valueChanged, required this.activeColor}) : super(key: key);

  @override
  State<CustomSwitchBtn> createState() => _CustomSwitchBtnState();
}

class _CustomSwitchBtnState extends State<CustomSwitchBtn>
    with SingleTickerProviderStateMixin {
    late Animation _alignmentAnimation ;
   late AnimationController _animationController;
  @override
  void initState() {
  _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 60));
  _alignmentAnimation = AlignmentTween(
      begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
      end: widget.value ? Alignment.centerLeft : Alignment.centerRight).animate(CurvedAnimation(parent: _animationController, curve: Curves.linear));
  // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false
                ? widget.valueChanged(true)
                : widget.valueChanged(false);
          },
          child: Container(
            height: height * 0.0312,
            width: width * 0.11,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: _alignmentAnimation.value == Alignment.centerLeft ?AppColors.listLightText:widget.activeColor
            ),
            child:  Padding(
              padding: const EdgeInsets.only(
                  top: 2.0, bottom: 2.0, right: 2.0, left: 2.0),
              child: Container(
                alignment:
                widget.value ?
                ((Directionality.of(context) == TextDirection.rtl) ? Alignment.centerLeft : Alignment.centerRight) :
                ((Directionality.of(context) == TextDirection.rtl) ? Alignment.centerRight : Alignment.centerLeft),
                child: Container(
                  width: width * 0.04,
                  height: height * 0.021,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
