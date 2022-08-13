import 'package:fluent_books_translator/CustomWidgets/Button.dart';
import 'package:fluent_books_translator/childWidgets/AppBarView.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/component/color.dart';
import 'package:fluent_books_translator/component/decoration.dart';
import 'package:fluent_books_translator/component/fonts.dart';
import 'package:fluent_books_translator/component/img.dart';
import 'package:fluent_books_translator/component/size.dart';
import 'package:flutter/material.dart';

class RequestExtendTime extends StatefulWidget {
  const RequestExtendTime({Key? key}) : super(key: key);
  static const String routeName = 'RequestExtendTime';

  @override
  State<RequestExtendTime> createState() => _RequestExtendTimeState();
}

class _RequestExtendTimeState extends State<RequestExtendTime> {
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
                preIcon: Img.backIOSWhiteIcon,
                preTap: ()=> Navigator.pop(context),
                title: requestForExtendTime,
                backgroundColor: blue,
              ),
              Expanded(child: Container()),
              Button(
                label: submit,
                labelStyle: txt_16_white,
                boxDeco: boxDecoration(color: blue, radius: s10),
                margin: s10,
              )
            ],
          ),
        ),
        )
    );
  }
}

