import 'package:fluent_books_translator/src/register/PaymentInfo.dart';
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

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);
  static const String routeName = 'AddAddress';
  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellowLightGold,
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
                        child: ImageView(Img.logoImg,size: s15 * 10,)),

                    Align(
                        alignment: Alignment.centerLeft,
                        child: TextView(address,style: txt_20_white_600_CM,marginTop: s40,)),

                    EditText(
                      hint: address,
                      boxDeco: editTextDecoration(),
                      marginVertical: s20,
                    ),

                    EditText(
                      hint: city,
                      boxDeco: editTextDecoration() ,
                    ),

                    EditText(
                      hint: state,
                      boxDeco: editTextDecoration() ,
                      marginVertical: s20,
                    ),

                    EditText(
                      hint: zipCode,
                      boxDeco: editTextDecoration() ,
                    ),

                    EditText(
                      hint: country,
                      boxDeco: editTextDecoration() ,
                      marginVertical: s20,
                    ),

                    Button(
                      label: next,
                      labelStyle: txt_20_white,
                      boxDeco: boxDecoration(color: blue, radius: s10),
                      marginVertical: s40,
                      ontap: (){
                        Navigator.pushNamed(context, PaymentInfo.routeName);
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
    return boxDecoration(color: white, radius: s10);
  }
}
