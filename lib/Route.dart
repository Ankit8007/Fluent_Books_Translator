
import 'package:flutter/material.dart';

import 'src/Login.dart';
import 'src/Splash.dart';
import 'src/register/AddAddress.dart';
import 'src/register/AddChild.dart';
import 'src/register/PaymentInfo.dart';
import 'src/register/QualificationDoc.dart';
import 'src/register/SelectChildLikes.dart';
import 'src/register/SelectLanguages.dart';
import 'src/register/SelectTranLangs.dart';
import 'src/register/SetupInterview.dart';
import 'src/register/TranslatorBlurb.dart';
import 'src/register/ContactDetails.dart';
import 'src/register/CreateAccount.dart';
import 'src/register/CreatePassword.dart';
import 'src/register/UploadIcon.dart';
import 'src/register/YourLanguage.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.routeName:(context) => const Splash(),
  Login.routeName: (context) => const Login(),
  CreateAccount.routeName:(context)=> const CreateAccount(),
  UploadIcon.routeName: (context) => const UploadIcon(),
  ContactDetails.routeName:(context)=> const ContactDetails(),
  CreatePassword.routeName:(context)=> const CreatePassword(),
  TranslatorBlurb.routeName: (context)=> const TranslatorBlurb(),
  AddAddress.routeName:(context)=> const AddAddress(),
  PaymentInfo.routeName:(context)=> const PaymentInfo(),
  YourLanguage.routeName:(context)=> const YourLanguage(),
  QualificationDoc.routeName:(context) => const QualificationDoc(),
  SelectTransLangs.routeName:(context) => const SelectTransLangs(),
  SetupInterview.routeName:(context) => const SetupInterview(),
  AddChild.routeName:(context)=> const AddChild(),
  SelectChildLikes.routeName:(context)=> const SelectChildLikes(),
  SelectLanguages.routeName:(context)=> const SelectLanguages(),
};