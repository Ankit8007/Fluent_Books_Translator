import 'package:fluent_books_translator/CustomWidgets/Button.dart';
import 'package:fluent_books_translator/childWidgets/AppBarView.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/component/color.dart';
import 'package:fluent_books_translator/component/decoration.dart';
import 'package:fluent_books_translator/component/fonts.dart';
import 'package:fluent_books_translator/component/img.dart';
import 'package:fluent_books_translator/component/size.dart';
import 'package:fluent_books_translator/src/RequestExtendTime.dart';
import 'package:flutter/material.dart';

class CreateBook extends StatefulWidget {
  const CreateBook({Key? key}) : super(key: key);
  static const String routeName = 'CreateBook';

  @override
  State<CreateBook> createState() => _CreateBookState();
}

class _CreateBookState extends State<CreateBook> {
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
                title: createBook,
                postIcon: Img.rotateIcon,
                postTap: (){},
                backgroundColor: blue,
              ),
              Expanded(child: Container()),
              Container(
                color: blue,
                child: Button(
                  label: startWork,
                  labelStyle: txt_16_blue_600,
                  boxDeco: boxDecoration(color: white, radius: s10,),
                  margin: s10,
                  ontap: ()=> Navigator.pushNamed(context, RequestExtendTime.routeName)
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
