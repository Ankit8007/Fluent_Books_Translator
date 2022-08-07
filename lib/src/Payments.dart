import 'package:fluent_books_translator/childWidgets/AppBarView.dart';
import 'package:fluent_books_translator/childWidgets/PaymentCard.dart';
import 'package:fluent_books_translator/childWidgets/PaymentChip.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/component/color.dart';
import 'package:fluent_books_translator/component/decoration.dart';
import 'package:fluent_books_translator/component/img.dart';
import 'package:fluent_books_translator/component/size.dart';
import 'package:fluent_books_translator/src/PaymentDetails.dart';
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
        child: Container(
          color: white,
          child: Column(
            children: [
              AppBarView(
                preIcon: Img.menuIcon,
                preTap: (){
                  _key.currentState!.openDrawer();
                },
                backgroundColor: blue,
                title: payments,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: s15, vertical: s10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        PaymentChip(label: 'Type', marginRight: s10,),
                        PaymentChip(label: 'Filter')
                      ],
                    ),
                    Row(
                      children: [
                        PaymentChip(label: 'Year', marginRight: s10,),
                        PaymentChip(label: 'Month')
                      ],
                    )
                  ],
                ),
              ),
              Expanded(child: Container(
                decoration: boxDecoration(color: white),
                child: ListView.separated(
                  shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: s15, vertical: s10),
                    itemBuilder: (context, index) => PaymentCard(
                      onTap: () => Navigator.pushNamed(context, PaymentDetails.routeName),
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: s10,),
                    itemCount: 10
                ),




              ))
            ],
          ),
        ),
      ),
      drawer: const SideMenu(),
    );
  }
}
