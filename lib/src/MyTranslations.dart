import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:flutter/material.dart';

import '../childWidgets/AppBarView.dart';
import '../component/color.dart';
import '../component/img.dart';
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
        child: Column(
          children: [
            AppBarView(
              preIcon: Img.menuIcon,
              title: myTranslations,
              postIcon: Img.notificationOutlineIcon,
              preTap: (){
                _key.currentState!.openDrawer();
              },
            ),
          ],
        ),
      ),
      drawer: const SideMenu(),
    );
  }
}
