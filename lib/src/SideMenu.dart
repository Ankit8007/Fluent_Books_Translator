import 'package:fluent_books_translator/childWidgets/SideMenuCard.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/component/color.dart';
import 'package:fluent_books_translator/component/img.dart';
import 'package:fluent_books_translator/component/size.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        backgroundColor: blue,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: s20 * 2),
                  shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => SideMenuCard(
                        icon: sideMenuList[index].image,
                        title: sideMenuList[index].title,
                      onTap: (){},
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: s20 * 2,
                        ),
                    itemCount: sideMenuList.length),

                SizedBox(height: s20,),

               SideMenuCard(icon: Img.logoutIcon, title: logout,onTap: (){},)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
