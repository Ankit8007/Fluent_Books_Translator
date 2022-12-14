
import 'package:fluent_books_translator/src/register/VerifyOTP.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../CustomWidgets/Button.dart';
import '../../CustomWidgets/EditText.dart';
import '../../CustomWidgets/ImageView.dart';
import '../../CustomWidgets/TextView.dart';
import '../../childWidgets/BottomBanner.dart';
import '../../component/appConstants.dart';
import '../../component/color.dart';
import '../../component/decoration.dart';
import '../../component/fonts.dart';
import '../../component/img.dart';
import '../../component/size.dart';
import '../../controller/AuthCtrl.dart';
import 'CreatePassword.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key}) : super(key: key);
  static const String routeName = 'ContactDetails';

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  final AuthCtrl authX = Get.put(AuthCtrl());
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController phoneCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pinkRose,
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
                            child: ImageView(Img.logoImg,size: s15 * 8,)),

                        Align(
                            alignment: Alignment.centerLeft,
                            child: TextView(contactDetails,style: txt_18_white_600_CM,marginTop: s40 * 2,)),

                        EditText(
                          hint: email,
                          boxDeco: editTextDecoration(),
                          marginVertical: s20,
                          controller: emailCtrl,
                          onChange: (String value) => authX.regData.email = value,
                        ),

                        EditText(
                          hint: phoneNumber,
                          boxDeco: editTextDecoration() ,
                          marginBottom: s20,
                          controller: phoneCtrl,
                          onChange: (String value) => authX.regData.phoneNo = value,
                        ),

                        Button(
                          label: next,
                          labelStyle: txt_16_white,
                          boxDeco: boxDecoration(color: blue, radius: s10, giveShadow: true),
                          marginVertical: s40,
                          ontap: (){
                            authX.register((status,msg,error) {
                              print('got status......$status');
                              if(status){
                                Fluttertoast.showToast(msg: msg);
                                print('got response msg ::: $msg');
                                Navigator.pushNamed(context, VerifyOTP.routeName);
                              }else{
                                print('got response erroe ::: $error');
                                Fluttertoast.showToast(msg: error);
                              }
                            });

                          },
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   crossAxisAlignment: CrossAxisAlignment.end,
                        //   children: [
                        //     TextView(dontHaveAnAccount_q,marginRight: s3, marginTop: s40,style: txt_15_white,),
                        //     TextView(sign_up,style: txt_15_blue_600_undr,)
                        //   ],
                        // )
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
  editTextDecoration(){
    return boxDecoration(color: white, radius: s10, giveShadow: true);
  }
}
