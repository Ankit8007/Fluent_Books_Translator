import 'package:fluent_books_translator/CustomWidgets/ImageView.dart';
import 'package:fluent_books_translator/CustomWidgets/TextView.dart';
import 'package:flutter/material.dart';

import '../component/size.dart';

class Avatar2 extends StatelessWidget {
  const Avatar2({Key? key, this.padding, this.paddingHorizontal, this.paddingVertical, this.paddingTop, this.paddingLeft, this.paddingRight, this.paddingBottom, this.img, this.radius, this.size, this.name, this.style}) : super(key: key);
  final double? padding;
  final double? paddingHorizontal;
  final double? paddingVertical;
  final double? paddingTop;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingBottom;
  final String? img;
  final double? radius;
  final double? size;
  final String ? name;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: padding?? paddingVertical ?? paddingTop ?? 0 ,
        left:padding?? paddingHorizontal ?? paddingLeft ?? 0 ,
        right: padding?? paddingHorizontal ?? paddingRight ?? 0 ,
        bottom:padding?? paddingVertical ?? paddingBottom ?? 0,

      ),

      child: Row(
        children: [
          SizedBox(
            height: size,
              width: size,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(size!/2),
                  child: ImageView(img!, size: size,))),
          TextView(name ?? '', style: style, marginLeft: s15,)
        ],
      ),
    );
  }
}
