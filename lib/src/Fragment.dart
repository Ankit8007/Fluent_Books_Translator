import 'package:fluent_books_translator/controller/FragmentCtrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Fragment extends StatefulWidget {
  const Fragment({Key? key}) : super(key: key);

  @override
  State<Fragment> createState() => _FragmentState();
}

class _FragmentState extends State<Fragment> {
  final FragmentCtrl ctrlX = Get.put(FragmentCtrl());
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<FragmentCtrl>(builder: (controller) => ctrlX.currentScreen,);
  }
}
