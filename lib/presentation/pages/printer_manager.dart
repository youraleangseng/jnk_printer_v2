import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printer/application/printer/printer_bloc.dart';
import 'package:printer/domain/print_doc/print_doc.dart';
import 'package:printer/presentation/common/app_button.dart';
import 'package:printer/presentation/common/custom_appbar.dart';
import 'package:printer/presentation/common/custom_text.dart';

class PrinterManager extends StatelessWidget {
  const PrinterManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PrinterBloc, PrinterState>(
      listener: (context, state) {
        if (state.isLoading) {
          EasyLoading.show(status: 'Loading..');
        } else if (state.error.isNotEmpty) {
          EasyLoading.showError(state.error);
        } else {
          EasyLoading.dismiss();
        }
      },
      builder: (context, state) {
        final PrinterBloc printerBloc = BlocProvider.of<PrinterBloc>(context);
        return Scaffold(
          appBar: const CustomAppBar('Printer manager'),
          body: Column(
            children: [
              Card(
                margin: EdgeInsets.all(15.w),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(15.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                            'Connected printer',
                            fontWeight: FontWeight.bold,
                            textType: TextType.headLine6,
                          ),
                          Switch(
                            value: state.isConnected,
                            onChanged: (v) {},
                          )
                        ],
                      ),
                      const Divider(),
                      const CustomText(
                        'No printer connected',
                        textType: TextType.headLine6,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
              AppButton(
                'Print test',
                () {
                  printerBloc.add(const PrintDocument(
                      PrintDoc('phone', 'name', 'location', 10, 15, 120, 400)));
                },
              ),
              AppButton(
                'Scan',
                () {
                  printerBloc.add(const ScanDevices());
                },
              ),
              if (state.nearbyDevices.isNotEmpty)
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 15.w),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            'Device found  (${state.nearbyDevices.length})',
                            textType: TextType.headLine5),
                        const Divider(),
                        SizedBox(
                          height: 300.h,
                          child: CupertinoScrollbar(
                            child: ListView.builder(
                                // shrinkWrap: true,
                                // physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.nearbyDevices.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    splashColor: Colors.green,
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: const CustomText(
                                                "Connect to printer?",
                                              ),
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                      "Device name: ${state.nearbyDevices[index].name}"),
                                                  CustomText(
                                                      "Address: ${state.nearbyDevices[index].address}"),
                                                  CustomText(
                                                      "Type: ${state.nearbyDevices[index].type}"),
                                                ],
                                              ),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text("Close"),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    printerBloc.add(
                                                        ConnectDevice(
                                                            state.nearbyDevices[
                                                                index]));
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text("Confirm"),
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  width: 0.5,
                                                  color: Colors.grey[400]!))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                            state.nearbyDevices[index].name,
                                            textType: TextType.headLine6,
                                            fontWeight: FontWeight.w300,
                                          ),
                                          // CustomText(
                                          //   state.nearbyDevices[index].address,
                                          //   textType: TextType.body3,
                                          //   fontWeight: FontWeight.w300,
                                          // ),
                                          if (state
                                              .nearbyDevices[index].connected!)
                                            const CustomText(
                                              'Connected',
                                              textType: TextType.body3,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}
