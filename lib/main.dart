import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printer/application/auth/auth_bloc.dart';
import 'package:printer/application/printer/printer_bloc.dart';
import 'package:printer/application/storage/storage_bloc.dart';
import 'package:printer/infrustructure/auth_provider.dart';
import 'package:printer/infrustructure/storage_provider.dart';
import 'package:printer/presentation/pages/home_page.dart';

import 'infrustructure/printer_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  // // Define an async function to initialize FlutterFire
  // void initializeFlutterFire() async {
  //   try {
  //     // Wait for Firebase to initialize and set `_initialized` state to true
  //     await Firebase.initializeApp();
  //     Logger().i('initialized');
  //
  //     setState(() {
  //       _initialized = true;
  //     });
  //   } catch (e) {
  //     Logger().e(e.toString());
  //     // Set `_error` state to true if Firebase initialization fails
  //     setState(() {
  //       _error = true;
  //     });
  //   }
  // }
  //
  // @override
  // void initState() {
  //   initializeFlutterFire();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(AuthProvider()),
        ),
        BlocProvider<StorageBloc>(
          create: (context) => StorageBloc(StorageProvider()),
        ),
        BlocProvider<PrinterBloc>(
          create: (context) => PrinterBloc(PrinterProvider()),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(490.9, 1036.4),
        builder: () {
          final ColorScheme colorScheme = Theme.of(context).colorScheme;
          return MaterialApp(
            title: 'Joonak Printer',
            theme: ThemeData(
              colorScheme: colorScheme.copyWith(
                  primary: const Color(0xFF78BE20),
                  primaryVariant: const Color(0xFFBCE986)),
              primarySwatch: Colors.blue,
            ),
            home: HomePage(),
            builder: EasyLoading.init(),
          );
        },
      ),
    );
  }
}

// class FirebaseFirestore {}
//
