import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_text.dart';
import 'input_field_type/input_field_type.dart';
export 'input_field_type/input_field_type.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String? label;
  final Color fillColor;
  final Color? hintColor;
  final Color? textColor;
  final Color borderColor;
  final TextType? textType;
  final EdgeInsets? padding;
  final bool enabled;
  final InputFieldType inputType;
  const CustomTextField(this.controller, this.hint,
      {this.label,
      this.inputType = const InputFieldType.regular(),
      this.hintColor,
      this.textColor,
      this.fillColor = Colors.black12,
      this.padding,
      this.borderColor = Colors.transparent,
      this.textType,
      this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: TextFormField(
        enabled: enabled,
        validator: _validator,
        showCursor: true,
        cursorColor: Theme.of(context).colorScheme.primaryVariant,
        keyboardType: inputType.maybeWhen<TextInputType>(
            email: () => TextInputType.emailAddress,
            phone: () => TextInputType.phone,
            number: () => TextInputType.number,
            orElse: () => TextInputType.text),
        obscureText: inputType == const InputFieldType.password(),
        style: (textType ?? TextType.headLine5).toStyle(context).copyWith(
            color: textColor ?? Theme.of(context).colorScheme.secondary),
        controller: controller,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          isDense: true,
          prefixStyle: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: ScreenUtil().setSp(25)),
          hintText: hint,
          labelText: label ?? hint,
          errorMaxLines: 2,
          labelStyle: TextType.body2.toStyle(context).copyWith(
              color: hintColor ?? Theme.of(context).colorScheme.secondary),
          hintStyle: (textType ?? TextType.headLine5).toStyle(context).copyWith(
              color: hintColor ??
                  Theme.of(context).colorScheme.secondary.withOpacity(0.5)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            // borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }

  String? _validator(String? text) {
    if (text == null || text.isEmpty) {
      return "empty field";
    } else {
      return inputType.when(
          phone: () {
            final RegExp regExp =
                RegExp(r"((\+)|(00))[0-9\(][\s\-\)0-9][^\n]{6,15}[0-9]");
            return regExp.hasMatch(text) ? "Incorrect phone number" : null;
          },
          email: () {
            final RegExp regExp = RegExp(
                r"^[a-zA-Z0-9.#$%&'*+/=^_`{|}~-]+@[a-zA-Z0-9](:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])(:\.[a-zA-Z0-9](:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9]))*$");
            return regExp.hasMatch(text) ? 'incorrect email address' : null;
          },
          password: () {
            final RegExp regExp =
                RegExp(r"^(=.*[a-z])(=.*[A-Z])(=.*\d)[a-zA-Z\d\w\W]{8,}$");
            return regExp.hasMatch(text) ? 'incorrect password' : null;
          },
          regular: () => null,
          url: () {
            final RegExp regExp = RegExp(
                r"\b(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})(\/\S*)\b\/");
            return regExp.hasMatch(text) ? 'incorrect url' : null;
          },
          number: () {
            return double.tryParse(text) == null
                ? "Only numbers are allowed"
                : null;
          });
    }
  }
}
