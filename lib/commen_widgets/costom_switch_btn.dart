import 'package:flutter/material.dart';
import 'package:roses/colors/app_colors.dart';
class SwitchButton extends StatefulWidget {
  SwitchButton({
    required this.value,
    required this.onChanged, required this.activeColor, required this.inactiveColor,
  });
  bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inactiveColor;

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
        width: 40,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: widget.value == true? widget.activeColor : widget.inactiveColor,
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear,
          alignment: widget.value == true? Alignment.centerRight : Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 3,right: 3),
            child: Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          widget.value == false?
               widget.onChanged(true)
              :widget.onChanged(false);
        });
      },
    );
  }
}