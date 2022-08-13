import 'package:fluent_books_translator/CustomWidgets/ImageView.dart';
import 'package:fluent_books_translator/CustomWidgets/TextView.dart';
import 'package:fluent_books_translator/childWidgets/BottomBanner.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/component/fonts.dart';
import 'package:flutter/material.dart';

import '../../CustomWidgets/ImageBtn.dart';
import '../../component/color.dart';
import '../../component/img.dart';
import '../../component/size.dart';

class UnderReview extends StatefulWidget {
  const UnderReview({Key? key}) : super(key: key);
  static const String routeName = 'UnderReview';

  @override
  State<UnderReview> createState() => _UnderReviewState();
}

class _UnderReviewState extends State<UnderReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pinkRose,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ImageBtn(
                  margin: s15,
                  childImg: Icon(Icons.arrow_back_ios, size: s20,color: white,),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                TextView(underReview,style: txt_18_white,),
              ],
            ),

            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageView(Img.waitingIcon,size: s15 * 10,),
                TextView(underReviewDesc,
                  style: txt_18_white_600_CM,
                  textAlign: TextAlign.center,
                  margin: s40
                )
              ],
            )),

            const BottomBanner(),
          ],
        ),
      ),
    );
  }
}
