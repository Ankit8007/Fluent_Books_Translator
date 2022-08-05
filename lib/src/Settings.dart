import 'package:fluent_books_translator/childWidgets/SettingsCard.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/component/decoration.dart';
import 'package:flutter/material.dart';

import '../childWidgets/AppBarView.dart';
import '../component/color.dart';
import '../component/img.dart';
import '../component/size.dart';
import 'SideMenu.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
              title: settings,
              preTap: (){
                _key.currentState!.openDrawer();
              },
            ),
            Expanded(
              child: Container(
                decoration: boxDecoration(color: white),
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: s20),
                    itemBuilder: (context, index) => SettingsCard(
                      title: settingsList[index].title,
                      icon: settingsList[index].image,
                      onTap: (){},
                    ) ,
                    separatorBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: s20),
                      child: Divider(height: s20, color: grey,),
                    ),
                    itemCount: settingsList.length),
              ),
            )
          ],
        ),
      ),
      drawer: const SideMenu(),
    );
  }
}
