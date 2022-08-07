import 'package:fluent_books_translator/CustomWidgets/Button.dart';
import 'package:fluent_books_translator/CustomWidgets/TextView.dart';
import 'package:fluent_books_translator/childWidgets/AppBarView.dart';
import 'package:fluent_books_translator/childWidgets/LanguageCard.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/component/fonts.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/ImageView.dart';
import '../component/color.dart';
import '../component/decoration.dart';
import '../component/img.dart';
import '../component/size.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({Key? key}) : super(key: key);
  static const String routeName = 'BookDetails';

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
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
                title: 'Details',
                preTap: (){
                  Navigator.pop(context);
                },
                postIcon: Img.rotateIcon,
                backgroundColor: blue,
              ),
              Expanded(child: Column(
                children: [
                  ImageView(
                    Img.bookImg,
                    fit: BoxFit.cover,
                    radius: s15,
                    width: s20 * 10,
                    marginTop: s20,
                    marginBottom: s10,
                    boxDeco: boxDecoration(borderColor: blue, radius: s15),
                  ),
                  Expanded(child: Container(
                    width: double.infinity,
                    color: greyHint,
                    child: Column(
                      children: [
                        TextView('Select Language for translation',
                          marginVertical: s10,
                          style: txt_14_black_600_CM,),
                        Expanded(
                          child: ListView.separated(
                            padding: EdgeInsets.symmetric(horizontal: s15 * 2),
                            shrinkWrap: true,
                              itemBuilder: (context, index) => LanguageCard(
                                  color: yellowLightGold,
                                  lang: langList[index].title,
                                  img: langList[index].image,
                                  status: langList[index].status),
                              separatorBuilder: (context, index) => SizedBox(height: s15,),
                              itemCount: langList.length),
                        )
                      ],
                    ),

                  ))
                ],
              )),
              Container(
                color: blue,
                child: Button(
                  label: 'Accept and start work',
                  labelStyle: txt_16_blue_600,
                  marginVertical: s10,
                  marginHorizontal: s20,
                  boxDeco: boxDecoration(color: white, radius: s10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}