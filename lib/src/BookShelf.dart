import 'package:fluent_books_translator/src/SideMenu.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/EditText.dart';
import '../CustomWidgets/ImageView.dart';
import '../childWidgets/AppBarView.dart';
import '../component/appConstants.dart';
import '../component/color.dart';
import '../component/decoration.dart';
import '../component/img.dart';
import '../component/size.dart';

class BookShelf extends StatefulWidget {
  const BookShelf({Key? key}) : super(key: key);

  @override
  State<BookShelf> createState() => _BookShelfState();
}

class _BookShelfState extends State<BookShelf> {
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
              title: bookShelf,
              postIcon: Img.notificationOutlineIcon,
              preTap: (){
                _key.currentState!.openDrawer();
              },
            ),
            EditText(
              hint: search,
              marginHorizontal: s15,
              marginTop: s10,
              marginBottom: s20,
              boxDeco: boxDecoration(color: white, radius: s10),
              inputType: TextInputType.text,
              preChild: ImageView(
                Img.searchIcon,
                size: 15,
                marginRight: s10,
              ),
            ),
            Expanded(
                child: Container(
              decoration: boxDecoration(radiusTop: s20, color: white),
              child: GridView.builder(
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
                ),
              ),
            ))
          ],
        ),
      ),
      drawer: SideMenu(),
    );
  }
}
