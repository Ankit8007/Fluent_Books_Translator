import 'package:fluent_books_translator/src/AboutUs.dart';
import 'package:fluent_books_translator/src/ContactUs.dart';
import 'package:fluent_books_translator/src/MyTranslations.dart';
import 'package:fluent_books_translator/src/NewsLetter.dart';
import 'package:fluent_books_translator/src/Notifications.dart';
import 'package:fluent_books_translator/src/Payments.dart';
import 'package:fluent_books_translator/src/Profile.dart';
import 'package:fluent_books_translator/src/Settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../src/BookShelf.dart';

class FragmentCtrl extends GetxController{
  Widget currentScreen = const BookShelf();
  onMenuAction(int index){
    switch (index){
      case 0:
        currentScreen = const BookShelf();
        break;
      case 1:
        currentScreen = const MyTranslations();
        break;
      case 2:
        currentScreen = const Payments();
        break;
      case 3:
        currentScreen = const NewsLetter();
        break;
      case 4:
        currentScreen = const Profile();
        break;
      case 5:
        currentScreen = const Notifications();
        break;
      case 6:
        currentScreen = const Settings();
        break;
      case 7:
        currentScreen = const AboutUs();
        break;
      case 8:
        currentScreen = const ContactUs();
        break;

    }

    update();
  }
}