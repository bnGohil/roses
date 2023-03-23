import 'dart:ui';
import 'package:flutter/material.dart';
import '../colors/app_colors.dart';

class CustomTextStyle{
  static const  TextStyle  everStyle =  TextStyle(
      color: AppColors.white,
      fontFamily: "Futura PT",
      fontSize: 21,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600
  );
  static const  TextStyle  bigFourEverText =   TextStyle(
      color: AppColors.white,
      fontFamily: "Lempicka-Display",
      fontSize: 72,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400
  );
  static const  TextStyle  smallFourEverStyle =  TextStyle(
      color: AppColors.white,
      fontFamily: "Futura PT",
      fontSize: 14,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600
  );
  static const  TextStyle  smallRosesText =   TextStyle(
      color: AppColors.white,
      fontFamily: "Lempicka-Display",
      fontSize: 52,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400
  );
  static TextStyle boldBigBlack =  const TextStyle(
      color: AppColors.black,
      fontFamily: "Futura PT - Bold",
      fontSize: 25,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500
  );
  static TextStyle boldBigBlack700 =  const TextStyle(
      color: AppColors.black,
      fontFamily: "Futura PT - Bold",
      fontSize: 25,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700
  );
  static TextStyle normalBlack =  const TextStyle(
      color: AppColors.black,
      fontFamily: "Futura PT - Bold",
      fontSize: 15,
      fontWeight: FontWeight.w400
  );
  static TextStyle normalWhite =  const TextStyle(
      color: AppColors.white,
      fontFamily: "Futura PT - Bold",
      fontStyle: FontStyle.normal,
      fontSize: 16,
      fontWeight: FontWeight.w500,
  );
  static TextStyle nameText =  const TextStyle(
    color: AppColors.black,
    fontFamily: "Futura PT - Bold",
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle emailText =  const TextStyle(
    color: AppColors.black,
    fontFamily: "Futura PT - Bold",
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static TextStyle totalText =  const TextStyle(
    color: AppColors.black,
    fontFamily: "Futura PT - Bold",
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );
  static TextStyle listBold =  const TextStyle(
    color: AppColors.black,
    fontFamily: "Futura PT - Bold",
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );
  static TextStyle listLight =  const TextStyle(
    color: AppColors.listLightText,
    fontFamily: "Futura PT - Bold",
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );
  static TextStyle pinkText =  const TextStyle(
    color: AppColors.pink,
    fontFamily: "Futura PT - Bold",
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );
  static TextStyle whiteBold700 =  const TextStyle(
    color: AppColors.white,
    fontFamily: "Futura PT - Bold",
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );
}