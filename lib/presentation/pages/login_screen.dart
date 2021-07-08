import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printer/application/auth/auth_bloc.dart';
import 'package:printer/presentation/common/custom_text.dart';
import 'package:printer/presentation/pages/home_page.dart';
import 'package:logger/logger.dart';
import 'package:pinput/pin_put/pin_put.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({Key? key}) : super(key: key);
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.lightGreen[400]!),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController phone = useTextEditingController();
    final TextEditingController pinController = useTextEditingController();

    final TextEditingController countryCode =
        useTextEditingController(text: 'BD');

    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is! AuthLoadingState || state is! AuthErrorState) {
          EasyLoading.dismiss();
        }
        state.maybeMap(
            loggedIn: (loggedIn) {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            loading: (loading) {
              EasyLoading.show(status: 'Loading');
            },
            codeSent: (codeSent) {
              EasyLoading.showToast('OTP Sent');
            },
            error: (error) {
              EasyLoading.showError(error.error);
            },
            orElse: () {});
      },
      builder: (context, state) {
        return Scaffold(
            body: ListView(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                decoration: BoxDecoration(color: colorScheme.primaryVariant),
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 150.h, bottom: 120.h),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.only(top: 40.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Phone",
                    style: TextStyle(color: Colors.grey, fontSize: 16.0),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    child: Row(
                      children: [
                        CountryCodePicker(
                          enabled: state is! AuthCodeSentState,
                          barrierColor: Colors.black12,
                          padding: EdgeInsets.zero,
                          showFlag: false,
                          showFlagDialog: true,
                          onChanged: (code) {
                            // Logger().i(code.code);
                            countryCode.text = code.dialCode!;
                          },
                          onInit: (code) {
                            countryCode.text = code!.dialCode!;
                          },
                          initialSelection: countryCode.text,
                          textStyle: TextStyle(
                              color: colorScheme.primary,
                              fontSize: ScreenUtil().setSp(25)),
                        ),
                        Container(
                          height: 30.0,
                          width: 1.0,
                          color: Colors.grey.withOpacity(0.5),
                          margin: const EdgeInsets.only(right: 10.0),
                        ),
                        Expanded(
                          child: TextField(
                            enabled: state is! AuthCodeSentState,
                            controller: phone,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your phone number',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  if (state is AuthCodeSentState)
                    const Center(child: CustomText('Enter OTP')),
                  if (state is AuthCodeSentState)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      padding: const EdgeInsets.all(20.0),
                      child: PinPut(
                        fieldsCount: 6,
                        onSubmit: (String pin) {
                          BlocProvider.of<AuthBloc>(context)
                              .add(VerifySMSEvent(pin, state.verificationId));
                        },
                        controller: pinController,
                        submittedFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        selectedFieldDecoration: _pinPutDecoration,
                        followingFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Colors.lightGreen,
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 30.h,
                  ),
                  // ignore: deprecated_member_use
                  if (state is! AuthCodeSentState)
                    // ignore: deprecated_member_use
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      splashColor: colorScheme.primaryVariant,
                      color: colorScheme.primary,
                      onPressed: () {
                        Logger().i(countryCode.text + phone.text);
                        BlocProvider.of<AuthBloc>(context).add(
                            VerifyPhoneNumber(countryCode.text + phone.text));
                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              state is! AuthCodeSentState
                                  ? "LOGIN"
                                  : 'Submit Code',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 25.w),
                            margin: EdgeInsets.symmetric(vertical: 5.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Icon(
                              Icons.arrow_forward,
                              color: colorScheme.primary,
                            ),
                          )
                        ],
                      ),
                    ),
                  Container(
                    padding: EdgeInsets.only(top: 40.h),
                    alignment: Alignment.center,
                    child: Text(
                      "DON'T HAVE AN ACCOUNT?",
                      style: TextStyle(color: colorScheme.primary),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
      },
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path p = Path();
    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, size.height * 0.85);
    p.arcToPoint(
      Offset(0.0, size.height * 0.85),
      radius: const Radius.elliptical(50.0, 10.0),
    );
    p.lineTo(0.0, 0.0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
