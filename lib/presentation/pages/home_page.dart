import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printer/application/printer/printer_bloc.dart';
import 'package:printer/application/storage/storage_bloc.dart';
import 'package:printer/presentation/common/custom_appbar.dart';
import 'package:printer/presentation/common/custom_text.dart';
import 'package:printer/presentation/pages/form_page.dart';
import 'package:printer/presentation/widgets/doc_shocase.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _bottomNavColor = Theme.of(context).colorScheme.primary;
    final PageController controller = usePageController(viewportFraction: 0.8);
    return MultiBlocListener(
      listeners: [
        BlocListener<StorageBloc, StorageState>(
          listenWhen: (p, c) =>
              p.isLoading != c.isLoading || p.message != c.message,
          listener: (context, state) {
            if (state.isLoading) {
              EasyLoading.show(status: 'loading...');
            } else if (state.message.isNotEmpty) {
              EasyLoading.showError(state.message);
            } else if (!state.isLoading) {
              EasyLoading.dismiss();
            }
          },
        ),
        BlocListener<PrinterBloc, PrinterState>(
          listenWhen: (p, c) =>
              p.isLoading != c.isLoading || p.error != c.error,
          listener: (context, state) {
            if (state.isLoading) {
              EasyLoading.show(status: 'loading...');
            } else if (state.error.isNotEmpty) {
              EasyLoading.showError(state.error);
            } else if (!state.isLoading) {
              EasyLoading.dismiss();
            }
          },
        )
      ],
      child: BlocBuilder<StorageBloc, StorageState>(
        builder: (context, state) {
          return Scaffold(
              backgroundColor: Colors.grey.shade300,
              appBar: const CustomAppBar('Joonak Printer'),
              body: Center(
                  child: PageView.builder(
                      reverse: true,
                      controller: controller,
                      itemCount: state.docs.length,
                      itemBuilder: (context, index) =>
                          DocShowCase(state.docs[index]))),
              floatingActionButton: FloatingActionButton(
                  backgroundColor: _bottomNavColor,
                  onPressed: () {
                    if (state.docs.isNotEmpty) {
                      BlocProvider.of<PrinterBloc>(context)
                          .add(PrintDocument(state.docs.first));
                    }
                  },
                  tooltip: '',
                  child: const Icon(
                    Icons.print,
                    color: Colors.white,
                  )),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: BottomAppBar(
                  color: _bottomNavColor,
                  shape: const CircularNotchedRectangle(),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                icon: const Icon(Icons.storage),
                                color: Colors.white,
                                onPressed: () {
                                  if (state.docs.isNotEmpty) {
                                    BlocProvider.of<PrinterBloc>(context)
                                        .add(PrintDocument(state.docs.first));
                                  }
                                }),
                            CustomText(
                              'Print',
                              color: Colors.white,
                              padding: EdgeInsets.only(bottom: 20.h),
                            )
                          ],
                        ),
                        Container(
                            height: 80.h,
                            alignment: Alignment.bottomCenter,
                            child: CustomText(
                              'New print',
                              color: Colors.white,
                              padding: EdgeInsets.only(bottom: 20.h),
                            )),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                icon: const Icon(Icons.add),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const FormPage()));
                                }),
                            CustomText(
                              'New',
                              color: Colors.white,
                              padding: EdgeInsets.only(bottom: 20.h),
                            )
                          ],
                        )
                      ])));
        },
      ),
    );
  }
}
