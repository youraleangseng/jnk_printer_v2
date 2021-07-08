import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printer/presentation/common/custom_text.dart';
import 'package:printer/presentation/pages/settings_page.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const CustomAppBar(
    this.titleText, {
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(150.h);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        height: 150.h,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (Navigator.of(context).canPop())
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: double.infinity,
                    width: 60.w,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: const Icon(Icons.arrow_left_outlined),
                  ),
                )
              else
                const SizedBox.shrink(),
              CustomText(
                titleText,
                textType: TextType.headLine4,
                color: Colors.black,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
                  },
                  icon: Icon(
                    Icons.settings,
                    size: 35.sp,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
