import 'package:fluent_books_translator/childWidgets/SettingsCard.dart';
import 'package:fluent_books_translator/childWidgets/ToggleSwitch.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/component/decoration.dart';
import 'package:fluent_books_translator/controller/FragmentCtrl.dart';
import 'package:fluent_books_translator/src/AccountDetails.dart';
import 'package:fluent_books_translator/src/ChangePassword.dart';
import 'package:fluent_books_translator/src/Languages.dart';
import 'package:fluent_books_translator/src/Notifications.dart';
import 'package:fluent_books_translator/src/PrivacyPolicy.dart';
import 'package:flutter/material.dart';

import '../childWidgets/AppBarView.dart';
import '../component/color.dart';
import '../component/img.dart';
import '../component/size.dart';
import 'SideMenu.dart';
import 'TermsCondition.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);


  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final FragmentCtrl scrX = Get.put(FragmentCtrl());
  bool value = false;

  onTapAction(index){
    String src = '';
    print('index is :: $index');
    switch (index){
      case 0:
        src = AccountDetails.routeName;
        break;
      case 1:
        src = Notifications.routeName;
        break;
      case 2:
        src = ChangePassword.routeName;
        break;
      case 3:
        src = Languages.routeName;
        break;
      case 4:
        src = AccountDetails.routeName;
        break;
      case 5:
        src = PrivacyPolicy.routeName;
        break;
      case 6:
        src = TermsCondition.routeName;
        break;
    }

    if(src == Notifications.routeName){
      scrX.onMenuAction(5);
    }else{
      Navigator.pushNamed(context, src);
    }

  }
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
                      onTap: ()=>onTapAction(index),
                      postChild: settingsList[index].postImage.isNotEmpty ?ToggleSwitch(status: value,onTap: (){
                        setState(() {
                          value = !value;
                        });
                      },) : null
                    )  ,
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
