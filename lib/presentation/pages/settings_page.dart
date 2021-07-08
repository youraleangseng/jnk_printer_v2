import 'package:flutter/material.dart';
import 'package:printer/presentation/common/app_button.dart';
import 'package:printer/presentation/pages/printer_manager.dart';
import 'package:printer/presentation/widgets/custom_scaffold.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Settings',
      child: Column(
        children: [
          AppButton(
            'Clear cache',
            () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.black,
            ),
          ),
          AppButton(
            'Profile',
            () {},
            icon: const Icon(
              Icons.contact_page,
              color: Colors.black,
            ),
          ),
          AppButton(
            'Printer manager',
            () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PrinterManager()));
            },
            icon: const Icon(
              Icons.print,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
