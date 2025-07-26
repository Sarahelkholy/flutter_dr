import 'package:dr/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final String buttontext;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? buttonWidth;
  final double? buttonHeight;

  AppTextButton(
      {super.key,
      this.borderRadius,
      required this.buttontext,
      this.textStyle,
      this.onPressed,
      this.backgroundColor,
      this.verticalPadding,
      this.horizontalPadding,
      this.buttonWidth,
      this.buttonHeight});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
              ),
            ),
            backgroundColor: WidgetStatePropertyAll(
                backgroundColor ?? ColorsManager.mainBlue),
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(
                  vertical: verticalPadding ?? 14.h,
                  horizontal: horizontalPadding ?? 12.w),
            ),
            fixedSize: WidgetStateProperty.all(
                Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 50.h))),
        onPressed: onPressed,
        child: Text(buttontext, style: textStyle));
  }
}
