import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printer/domain/print_doc/print_doc.dart';
import 'package:printer/presentation/common/custom_text.dart';
import 'package:printer/presentation/common/custom_textfield.dart';
import 'package:printer/resources/resources.dart';

class DocShowCase extends HookWidget {
  final PrintDoc doc;
  const DocShowCase(this.doc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextEditingController phoneController =
        useTextEditingController(text: doc.phone);
    final TextEditingController nameController =
        useTextEditingController(text: doc.name);
    final TextEditingController locationController =
        useTextEditingController(text: doc.location);
    final TextEditingController priceController =
        useTextEditingController(text: doc.price.toString());
    final TextEditingController deliveryFeeController =
        useTextEditingController(text: doc.deliveryFee.toString());
    final TextEditingController totalBudgetController =
        useTextEditingController(text: doc.totalPrice.toString());
    final TextEditingController totalController =
        useTextEditingController(text: doc.total.toString());

    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.h, horizontal: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 40.h),
      // height: double.infinity,
      // width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            Assets.joonaakLogo,
            width: 100.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                Assets.instagram,
                height: 40.h,
              ),
              const CustomText('/insta', fontWeight: FontWeight.w500),
              Image.asset(
                Assets.facebook,
                height: 40.h,
              ),
              const CustomText(
                '/facebook',
                fontWeight: FontWeight.w500,
              ),
              Image.asset(
                Assets.tiktok,
                height: 40.h,
              ),
              const CustomText('/tiktok', fontWeight: FontWeight.w500),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.call),
                CustomText('+012345678'),
              ],
            ),
          ),
          CustomTextField(
            phoneController,
            'Phone',
            enabled: false,
            borderColor: colorScheme.primary,
            fillColor: Colors.white,
            textColor: colorScheme.primary,
            hintColor: colorScheme.primaryVariant,
          ),
          CustomTextField(
            nameController,
            'Name',
            enabled: false,
            borderColor: colorScheme.primary,
            fillColor: Colors.white,
            textColor: colorScheme.primary,
            hintColor: colorScheme.primaryVariant,
          ),
          CustomTextField(
            locationController,
            'Location',
            enabled: false,
            borderColor: colorScheme.primary,
            fillColor: Colors.white,
            textColor: colorScheme.primary,
            hintColor: colorScheme.primaryVariant,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150.w,
                child: CustomTextField(
                  priceController,
                  'Price',
                  enabled: false,
                  borderColor: colorScheme.primary,
                  fillColor: Colors.white,
                  textColor: colorScheme.primary,
                  hintColor: colorScheme.primaryVariant,
                ),
              ),
              SizedBox(
                width: 150.w,
                child: CustomTextField(
                  deliveryFeeController,
                  'Delivery fee',
                  enabled: false,
                  borderColor: colorScheme.primary,
                  fillColor: Colors.white,
                  textColor: colorScheme.primary,
                  hintColor: colorScheme.primaryVariant,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150.w,
                child: CustomTextField(
                  totalBudgetController,
                  'Total (\$)',
                  enabled: false,
                  borderColor: colorScheme.primary,
                  fillColor: Colors.white,
                  textColor: colorScheme.primary,
                  hintColor: colorScheme.primaryVariant,
                ),
              ),
              SizedBox(
                width: 150.w,
                child: CustomTextField(
                  totalController,
                  'Total (1)',
                  enabled: false,
                  borderColor: colorScheme.primary,
                  fillColor: Colors.white,
                  textColor: colorScheme.primary,
                  hintColor: colorScheme.primaryVariant,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
