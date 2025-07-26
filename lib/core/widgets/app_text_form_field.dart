import 'package:dr/core/theming/colors.dart';
import 'package:dr/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final bool? isObscureText;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;

  AppTextFormField(
      {super.key,
      this.contentPadding,
      required this.hintText,
      this.suffixIcon,
      this.focusedBorder,
      this.enabledBorder,
      this.isObscureText,
      this.inputTextStyle,
      this.hintStyle});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        filled: true,
        fillColor: ColorsManager.offwhite,
        hintText: hintText,
        suffixIcon: suffixIcon,
        suffixIconColor: ColorsManager.lightgrey,
        hintStyle: hintStyle ?? Textstyles.font14LightGreyRegular,
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3.w,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsManager.lightergry,
                width: 1.3.w,
              ),
            ),
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? Textstyles.font14DarkblueRegular,
    );
  }
}
