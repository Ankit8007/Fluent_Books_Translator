import 'package:fluent_books_translator/CustomWidgets/ImageView.dart';
import 'package:fluent_books_translator/CustomWidgets/TextView.dart';
import 'package:fluent_books_translator/childWidgets/BottomBanner.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/component/fonts.dart';
import 'package:flutter/material.dart';

import '../childWidgets/AppBarView.dart';
import '../component/color.dart';
import '../component/img.dart';
import '../component/size.dart';
import 'SideMenu.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: blue,
      body: SafeArea(
        child: Container(
          color: white,
          child: Column(
            children: [
              AppBarView(
                preIcon: Img.menuIcon,
                title: aboutUs,
                backgroundColor: blue,
                preTap: (){
                  _key.currentState!.openDrawer();
                },
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(s15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextView(dummy,style: txt_12_black,),

                      ImageView(Img.aboutBanner,
                        width: double.infinity,
                        height: s20 * 10,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: const SideMenu(),
    );
  }
}
