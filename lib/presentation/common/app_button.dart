import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class AppButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color color;
  final Widget? icon;
  final bool isTransparent;
  final EdgeInsets? margin;
  final Color textColor;
  final TextType textType;
  final EdgeInsets? padding;

  const AppButton(this.text, this.onPressed,
      {Key? key,
      this.color = Colors.white,
      this.textColor = Colors.black,
      this.isTransparent = false,
      this.margin,
      this.textType = TextType.headLine5,
      this.padding,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: margin ?? EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey,
          padding: padding,
          elevation: 2,
          primary: isTransparent ? Colors.transparent : color,
          onPrimary: Colors.white,
          shape: isTransparent
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
          side: BorderSide(
            color: color,
          ),
        ),
        onPressed: onPressed,
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      icon!,
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomText(text,
                          color: textColor,
                          maxLine: 1,
                          fontWeight: FontWeight.w600,
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          textType: textType),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  )
                ],
              )
            : Center(
                child: CustomText(text,
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    color: textColor,
                    maxLine: 1,
                    textType: textType),
              ),
      ),
    );
  }
}
