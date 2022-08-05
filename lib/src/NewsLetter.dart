import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:flutter/material.dart';

import '../childWidgets/AppBarView.dart';
import '../component/color.dart';
import '../component/img.dart';
import 'SideMenu.dart';

class NewsLetter extends StatefulWidget {
  const NewsLetter({Key? key}) : super(key: key);

  @override
  State<NewsLetter> createState() => _NewsLetterState();
}

class _NewsLetterState extends State<NewsLetter> {
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
              title: emailNewsLetter,
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
