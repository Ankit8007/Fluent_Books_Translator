import 'package:fluent_books_translator/CustomWidgets/DropDown.dart';
import 'package:fluent_books_translator/src/register/YourLanguage.dart';
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

class PaymentInfo extends StatefulWidget {
  const PaymentInfo({Key? key}) : super(key: key);
  static const String routeName = 'PaymentInfo';

  @override
  State<PaymentInfo> createState() => _PaymentInfoState();
}

class _PaymentInfoState extends State<PaymentInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenPaleOlive_light,
      body: SafeArea(
        child: SingleChildScrollView(
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
                        child: TextView(paymentInfo,style: txt_18_white_600_CM,marginTop: s40 * 2, )),

                    DropDown(hint: selectYourBank,
                      boxDeco: editTextDecoration(),
                      marginTop: s20 * 2,
                    ),
                    EditText(
                      hint: enterSwiftCode,
                      boxDeco: editTextDecoration(),
                      marginVertical: s20,
                    ),

                    EditText(
                      hint: enterAccountNumber,
                      boxDeco: editTextDecoration() ,
                    ),



                    Button(
                      label: next,
                      labelStyle: txt_16_white,
                      boxDeco: boxDecoration(color: blue, radius: s10, giveShadow: true),
                      marginVertical: s40,
                      ontap: (){
                        Navigator.pushNamed(context, YourLanguage.routeName);
                      },
                    ),
                  ],
                ),
              ),
              //const Spacer(),


              const BottomBanner(),
            ],
          ),
        ),
      ),
    );
  }
  editTextDecoration(){
    return boxDecoration(color: white, radius: s10,giveShadow: true);
  }
}
