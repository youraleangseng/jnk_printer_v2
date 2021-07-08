import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printer/presentation/common/custom_text.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? child;
  final String? title;
  const CustomScaffold({Key? key, @required this.child, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Navigator.canPop(context)
            ? InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30.sp,
                ),
              )
            : const SizedBox.shrink(),
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        title: CustomText(
          title!,
          textType: TextType.headLine5,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Container(
          margin: EdgeInsets.only(top: 30.h),
          padding: EdgeInsets.only(top: 20.h, left: 20.h, right: 20.h),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: child),
    );
  }
}
