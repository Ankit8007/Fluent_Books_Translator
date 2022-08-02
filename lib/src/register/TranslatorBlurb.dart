import 'package:flutter/material.dart';

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
import 'AddAddress.dart';

class TranslatorBlurb extends StatefulWidget {
  const TranslatorBlurb({Key? key}) : super(key: key);
  static const String routeName = 'TranslatorBlurb';

  @override
  State<TranslatorBlurb> createState() => _TranslatorBlurbState();
}

class _TranslatorBlurbState extends State<TranslatorBlurb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellowishOrange,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(s15),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: ImageView(Img.logoImg,size: s15 * 10,)),

                  Align(
                      alignment: Alignment.centerLeft,
                      child: TextView(translatorBlurb,style: txt_20_white_600_CM,marginTop: s40,)),

                  EditText(
                    hint: textHere,
                    boxDeco: editTextDecoration(),
                    marginVertical: s20,
                    maxLines: 5,
                    minLines: 5,
                    inputType: TextInputType.multiline,

                  ),

                  Button(
                    label: next,
                    labelStyle: txt_20_white,
                    boxDeco: boxDecoration(color: blue, radius: s10),
                    marginVertical: s40,
                    ontap: (){
                      Navigator.pushNamed(context, AddAddress.routeName);
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
    return boxDecoration(color: white, radius: s10);
  }
}

