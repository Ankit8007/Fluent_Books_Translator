import 'package:flutter/material.dart';
import '../childWidgets/AppBarView.dart';
import '../component/appConstants.dart';
import '../component/color.dart';
import '../component/img.dart';
import 'SideMenu.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              title: myProfile,
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
