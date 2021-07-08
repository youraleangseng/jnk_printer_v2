import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printer/application/auth/auth_bloc.dart';
import 'package:printer/application/storage/storage_bloc.dart';
import 'package:printer/presentation/pages/home_page.dart';
import 'package:printer/presentation/pages/login_screen.dart';
import 'package:printer/resources/resources.dart';
// import 'package:joonak_printer/presentation/pages/login_screen.dart';
// import 'package:joonak_printer/resources/resources.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double position = -150;
  bool toNextPage = false;

  @override
  void initState() {
    Future.delayed(const Duration(microseconds: 100), () {
      setState(() {
        position = 480;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: const Duration(seconds: 2),
              onEnd: () {
                BlocProvider.of<StorageBloc>(context).add(const LoadData());
                BlocProvider.of<AuthBloc>(context).add(const CheckAuthStatus());
                if (FirebaseAuth.instance.currentUser != null) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                } else {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                }
              },
              top: 500.h,
              left: position,
              curve: Curves.easeIn,
              child: Image.asset(
                Gifs.fast,
                width: 150.w,
              )),
        ],
      ),
    );
  }
}
