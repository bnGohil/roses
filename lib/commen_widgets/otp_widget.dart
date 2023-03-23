import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import 'CustomTextStyle.dart';
class OtpWidget extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  const OtpWidget({Key? key, this.onChanged}) : super(key: key);

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  int limit = 4;
  var value = "";
  bool textFieldIsEmpty = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(limit, (index) {
              var myValue = (value.isNotEmpty && value.length >= index + 1) ? value[index] : "";
              return Container(
                height: height *  0.07,
                width: width * 0.13,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.textFiled),
                child: Center(child: Text(myValue,style:  CustomTextStyle.normalBlack,)
                ),
              );
            })
        ),
        TextFormField(
          cursorColor: AppColors.transparent,
          showCursor: false,
          autofocus: false,
          onChanged: (value) {
            var storeValue = "";
            storeValue = value;
            if(storeValue.length <= limit){
              setState(() {
                this.value = storeValue;
                print("if part value $value");
                print("if part store value $storeValue");
              });
            }else{
              setState(() {
                storeValue = "";
                     });
            }
            if(value.length >= limit){
              FocusManager.instance.primaryFocus?.unfocus();
            }
            widget.onChanged!.call(this.value);
            },
          style: const TextStyle(
              color: AppColors.transparent),
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            counterText: '',
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusColor: AppColors.transparent,
            fillColor: AppColors.transparent,
            filled: false,
            focusedBorder: InputBorder.none,
            alignLabelWithHint: false,
            focusedErrorBorder: InputBorder.none,
            border: InputBorder.none,
            errorBorder: InputBorder.none,
          ),
        ),
      ],
    );
  }
}
