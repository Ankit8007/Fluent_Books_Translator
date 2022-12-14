import 'package:fluent_books_translator/src/ForgotPassword.dart';
import 'package:fluent_books_translator/src/Fragment.dart';
import 'package:fluent_books_translator/src/register/CreateAccount.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../CustomWidgets/Button.dart';
import '../CustomWidgets/EditText.dart';
import '../CustomWidgets/ImageView.dart';
import '../CustomWidgets/TextView.dart';
import '../childWidgets/BottomBanner.dart';
import '../component/appConstants.dart';
import '../component/color.dart';
import '../component/decoration.dart';
import '../component/fonts.dart';
import '../component/img.dart';
import '../component/size.dart';
import '../controller/AuthCtrl.dart';
import 'register/ContactDetails.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const String routeName = 'Login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthCtrl authX = Get.put(AuthCtrl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleMimosa,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(s15),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: ImageView(
                              Img.logoImg,
                              size: s15 * 8,
                            )),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: TextView(
                              log_in,
                              style: txt_18_white_600_CM,
                              marginTop: s40,
                              marginBottom: s20,
                            )),
                        EditText(
                          hint: email,
                          boxDeco: editTextDecoration(),
                          marginVertical: s20,
                          controller: authX.emailLogin,
                        ),
                        EditText(
                          hint: password,
                          boxDeco: editTextDecoration(),
                          controller: authX.passLogin,
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: TextView(
                              forgotYourPassword_q,
                              marginVertical: s40,
                              style: txt_13_white_600_undr,
                              onTap: ()=> Navigator.pushNamed(context, ForgotPassword.routeName)
                            )),
                        Button(
                            label: log_in,
                            labelStyle: txt_16_white,
                            boxDeco: boxDecoration(
                                color: blue, radius: s10, giveShadow: true),
                            ontap: () {
                              authX.login((status,msg,error) {
                                if(status){
                                  Fluttertoast.showToast(msg: msg);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Fragment(),
                                      ));
                                }else{
                                  Fluttertoast.showToast(msg: error);
                                }
                              });
                            }),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextView(
                              dontHaveAnAccount_q,
                              marginRight: s3,
                              marginTop: s40,
                              style: txt_13_white,
                            ),
                            TextView(
                              sign_up,
                              style: txt_13_blue_600_undr,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, ContactDetails.routeName);
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const BottomBanner(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  editTextDecoration() {
    return boxDecoration(color: white, radius: s10, giveShadow: true);
  }
}
