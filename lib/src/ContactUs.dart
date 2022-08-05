import 'package:flutter/material.dart';

import '../childWidgets/AppBarView.dart';
import '../component/appConstants.dart';
import '../component/color.dart';
import '../component/img.dart';
import 'SideMenu.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
              title: contactUs,
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
