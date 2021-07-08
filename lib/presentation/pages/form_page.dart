import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printer/application/storage/storage_bloc.dart';
import 'package:printer/domain/print_doc/print_doc.dart';
import 'package:printer/presentation/common/custom_text.dart';
import 'package:printer/presentation/common/custom_textfield.dart';
import 'package:printer/resources/resources.dart';

class FormPage extends HookWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextEditingController phoneController =
        useTextEditingController(text: '01778846466');
    final TextEditingController nameController =
        useTextEditingController(text: 'ambani');
    final TextEditingController locationController =
        useTextEditingController(text: 'dhaka');
    final TextEditingController priceController =
        useTextEditingController(text: '23');
    final TextEditingController deliveryFeeController =
        useTextEditingController(text: '50');
    final TextEditingController totalBudgetController =
        useTextEditingController(text: '45');
    final TextEditingController totalController =
        useTextEditingController(text: '83');

    return BlocListener<StorageBloc, StorageState>(
      listenWhen: (p, c) =>
          p.isLoading != c.isLoading || p.message != c.message,
      listener: (context, state) {
        if (state.isLoading) {
          EasyLoading.show(status: 'loading...');
        } else if (state.message.isNotEmpty) {
          EasyLoading.showError(state.message);
        } else if (!state.isLoading) {
          EasyLoading.dismiss();
          BlocProvider.of<StorageBloc>(context).add(const LoadData());
          Navigator.pop(context);
        }
      },
      child: Scaffold(
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
          title: const CustomText(
            'New print',
            textType: TextType.headLine5,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Stack(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey.shade200),
                alignment: Alignment.center,
                // padding: EdgeInsets.only(top: 150.h, bottom: 120.h),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  top: 40.h,
                  left: 40.w,
                  right: 40.w,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 40.h),
                      // height: double.infinity,
                      // width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
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
                              const CustomText('/insta',
                                  fontWeight: FontWeight.w500),
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
                              const CustomText('/tiktok',
                                  fontWeight: FontWeight.w500),
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
                            borderColor: colorScheme.primary,
                            fillColor: Colors.white,
                            textColor: colorScheme.primary,
                            hintColor: colorScheme.primaryVariant,
                          ),
                          CustomTextField(
                            nameController,
                            'Name',
                            borderColor: colorScheme.primary,
                            fillColor: Colors.white,
                            textColor: colorScheme.primary,
                            hintColor: colorScheme.primaryVariant,
                          ),
                          CustomTextField(
                            locationController,
                            'Location',
                            borderColor: colorScheme.primary,
                            fillColor: Colors.white,
                            textColor: colorScheme.primary,
                            hintColor: colorScheme.primaryVariant,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 195.w,
                                child: CustomTextField(
                                  priceController,
                                  'Price',
                                  borderColor: colorScheme.primary,
                                  fillColor: Colors.white,
                                  textColor: colorScheme.primary,
                                  hintColor: colorScheme.primaryVariant,
                                ),
                              ),
                              SizedBox(
                                width: 195.w,
                                child: CustomTextField(
                                  deliveryFeeController,
                                  'Delivery fee',
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
                                width: 195.w,
                                child: CustomTextField(
                                  totalBudgetController,
                                  'Total (\$)',
                                  borderColor: colorScheme.primary,
                                  fillColor: Colors.white,
                                  textColor: colorScheme.primary,
                                  hintColor: colorScheme.primaryVariant,
                                ),
                              ),
                              SizedBox(
                                width: 195.w,
                                child: CustomTextField(
                                  totalController,
                                  'Total (1)',
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
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60.h,
                                width: 50.w,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    )),
                                child: const Icon(CupertinoIcons.minus),
                              ),
                              Container(
                                height: 60.h,
                                width: 40.w,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                alignment: Alignment.center,
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: const CustomText('1'),
                              ),
                              Container(
                                height: 60.h,
                                width: 50.w,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    )),
                                child: const Icon(Icons.add),
                              )
                            ]),
                        InkWell(
                          onTap: () {
                            BlocProvider.of<StorageBloc>(context).add(
                                AddDocument(PrintDoc(
                                    phoneController.text,
                                    nameController.text,
                                    locationController.text,
                                    double.parse(priceController.text),
                                    double.parse(deliveryFeeController.text),
                                    double.parse(totalBudgetController.text),
                                    double.parse(totalController.text))));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: EdgeInsets.all(40.w),
                              child: Icon(
                                Icons.print,
                                size: 100.sp,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path p = Path();
    p.moveTo(size.width / 2, size.height / 2.5);
    p.lineTo(0, size.height / 1.5);
    p.lineTo(0.0, size.height);
    p.lineTo(size.width, size.height);
    p.lineTo(size.width, size.height / 1.5);

    // p.lineTo(0, size.height / 4);
    // p.lineTo(size.width / 2, 0.0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
