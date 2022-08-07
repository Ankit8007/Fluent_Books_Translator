import 'package:fluent_books_translator/childWidgets/TabButton.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/src/TranslationSingle.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/ImageView.dart';
import '../childWidgets/AppBarView.dart';
import '../component/color.dart';
import '../component/decoration.dart';
import '../component/img.dart';
import '../component/size.dart';
import 'SideMenu.dart';

class MyTranslations extends StatefulWidget {
  const MyTranslations({Key? key}) : super(key: key);

  @override
  State<MyTranslations> createState() => _MyTranslationsState();
}

class _MyTranslationsState extends State<MyTranslations> {
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
                title: myTranslations,
                backgroundColor: blue,
                preTap: (){
                  _key.currentState!.openDrawer();
                },
              ),
              Row(
                children: [
                  TabButton(label: 'Pending', status: true, onTap: (){},),
                  TabButton(label: 'Completed', status: false, onTap: (){},)
                ],
              ),
              Expanded(child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: s25, vertical: s25),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: s15 * 2,
                    mainAxisSpacing: s20,
                    childAspectRatio: 8 / 10),
                itemCount: 10,
                itemBuilder: (context, index) => ImageView(
                  Img.bookImg,
                  fit: BoxFit.cover,
                  radius: s15,
                  boxDeco: boxDecoration(borderColor: blue, radius: s15),
                  onTap: (){
                    Navigator.pushNamed(context, TranslationSingle.routeName);
                  },
                ),
              ),)
            ],
          ),
        ),
      ),
      drawer: const SideMenu(),
    );
  }
}
