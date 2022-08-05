import 'package:fluent_books_translator/childWidgets/AppBarView.dart';
import 'package:fluent_books_translator/childWidgets/PaymentCard.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/component/color.dart';
import 'package:fluent_books_translator/component/decoration.dart';
import 'package:fluent_books_translator/component/img.dart';
import 'package:fluent_books_translator/component/size.dart';
import 'package:flutter/material.dart';

import 'SideMenu.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
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
              preTap: (){
                _key.currentState!.openDrawer();
              },
              title: payments,
            ),
            Expanded(child: Container(
              decoration: boxDecoration(color: white),
              child: ListView.separated(
                shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: s15, vertical: s10),
                  itemBuilder: (context, index) => PaymentCard(
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: s10,),
                  itemCount: 10
              ),




            ))
          ],
        ),
      ),
      drawer: const SideMenu(),
    );
  }
}
