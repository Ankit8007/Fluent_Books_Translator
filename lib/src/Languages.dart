import 'package:fluent_books_translator/CustomWidgets/Button.dart';
import 'package:fluent_books_translator/CustomWidgets/DropDown.dart';
import 'package:fluent_books_translator/CustomWidgets/ImageView.dart';
import 'package:fluent_books_translator/CustomWidgets/TextView.dart';
import 'package:fluent_books_translator/childWidgets/AppBarView.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/component/color.dart';
import 'package:fluent_books_translator/component/decoration.dart';
import 'package:fluent_books_translator/component/fonts.dart';
import 'package:fluent_books_translator/component/img.dart';
import 'package:flutter/material.dart';

import '../component/size.dart';

class Languages extends StatefulWidget {
  const Languages({Key? key}) : super(key: key);
  static const String routeName = 'Languages';

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: SafeArea(
        child: Container(
          color: white,
          child: Column(
            children: [
              AppBarView(
                title: 'Languages',
                preTap: (){
                  Navigator.pop(context);
                },
                backgroundColor: blue,
                preIcon: Img.backIOSWhiteIcon,
              ),
              Expanded(child: SingleChildScrollView(
                padding: EdgeInsets.all(s15),
                child: Column(
                  children: [
                    header('Mother Tongue'),
                    DropDown(hint: english,
                      boxDeco: decoration(),
                      marginBottom: s20,
                    ),
                    header('Other Languages', child: ImageView(Img.addCirBlueIcon,
                    size: s20, onTap: (){},
                    )),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => DropDown(hint: english,
                          boxDeco: decoration(),
                        ),
                        separatorBuilder: (context, index) => SizedBox(height: s20,),
                        itemCount: 3)
                  ],
                ),
              )),
              Button(label: 'Save',
                labelStyle: txt_16_white,
                margin: s15,
                boxDeco: boxDecoration(
                    color: blue,
                  radius: s10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget header(title,{Widget? child}){
    return Padding(
      padding: EdgeInsets.only(top: s10, bottom: s20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextView(title,style: txt_14_blue_600,),
          SizedBox(child: child,),
        ],
      ),
    );
  }

  BoxDecoration decoration(){
    return boxDecoration(borderColor: grey100, radius: s10);
  }
}
