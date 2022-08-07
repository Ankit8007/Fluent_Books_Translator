import 'package:fluent_books_translator/CustomWidgets/ImageView.dart';
import 'package:fluent_books_translator/CustomWidgets/TextView.dart';
import 'package:fluent_books_translator/component/color.dart';
import 'package:fluent_books_translator/component/decoration.dart';
import 'package:fluent_books_translator/component/fonts.dart';
import 'package:fluent_books_translator/component/img.dart';
import 'package:fluent_books_translator/component/size.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({Key? key, this.onTap}) : super(key: key);
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: boxDecoration(borderColor: grey, radius: s8),
        padding: EdgeInsets.symmetric(vertical: s8, horizontal: s10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageView(Img.amountReceiveIcon, size: s5 * 7, fit: BoxFit.contain,
              marginRight: s10,
            ),

            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView('Received From', style: txt_12_black_500,),
                TextView('Admin', style: txt_10_grey,),
                TextView('12-12-1245, 4:56 PM', style: txt_10_grey,)
              ],
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextView("@ 2,000",style: txt_green,),
                TextView('Credit To Bank', style: txt_10_grey_500,)
              ],
            )
          ],
        ),
      ),
    );
  }
}


