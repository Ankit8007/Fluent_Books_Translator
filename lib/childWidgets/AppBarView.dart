import 'package:fluent_books_translator/component/fonts.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/ImageView.dart';
import '../CustomWidgets/TextView.dart';
import '../component/size.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key, this.preIcon, this.title, this.postIcon, this.preTap})
      : super(key: key);
  final String? preIcon;
  final String? title;
  final String? postIcon;
  final GestureTapCallback? preTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(s15),
      child: Row(
        children: [
          GestureDetector(
            onTap: preTap,
              child: imageCard(icon: preIcon)),
          Expanded(
              child: TextView(
            title ?? '',
            style: txt_16_white,
            marginHorizontal: s20,
          )),
          imageCard(icon: postIcon),
        ],
      ),
    );
  }

  Widget imageCard({String? icon}) {
    return SizedBox(
      child: icon != null
          ? ImageView(
              icon,
              size: s11 * 2,
              fit: BoxFit.contain,
            )
          : SizedBox(
              width: s11 * 2,
            ),
    );
  }
}
