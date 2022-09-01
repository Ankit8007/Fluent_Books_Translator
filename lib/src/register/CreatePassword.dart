
import 'package:flutter/material.dart';
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
import 'AddAddress.dart';
import 'TranslatorBlurb.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);
  static const String routeName = 'CreatePassword';
  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  @override
  Widget build(BuildContext context) {
    final AuthCtrl authX = Get.put(AuthCtrl());
    final passCtrl = TextEditingController();
    final confirmCtrl = TextEditingController();
    return Scaffold(
      backgroundColor: peach,
      body: SafeArea(
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
                      child: TextView(addPassword,style: txt_18_white_600_CM,marginTop: s40 * 2,marginBottom: s20,)),

                  EditText(
                    hint: password,
                    boxDeco: editTextDecoration(),
                    marginVertical: s20,
                    controller: passCtrl,
                  ),

                  EditText(
                    hint: confirmPassword,
                    boxDeco: editTextDecoration() ,
                    marginBottom: s20,
                    controller: confirmCtrl,
                  ),

                  Button(
                    label: next,
                    labelStyle: txt_16_white,
                    boxDeco: boxDecoration(color: blue, radius: s10, giveShadow: true),
                    marginVertical: s40,
                    ontap: (){
                      Navigator.pushNamed(context, TranslatorBlurb.routeName);
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
    );
  }
  editTextDecoration(){
    return boxDecoration(color: white, radius: s10, giveShadow: true);
  }
}
