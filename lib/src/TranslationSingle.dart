import 'package:fluent_books_translator/CustomWidgets/Button.dart';
import 'package:fluent_books_translator/childWidgets/AppBarView.dart';
import 'package:fluent_books_translator/component/appConstants.dart';
import 'package:fluent_books_translator/component/color.dart';
import 'package:fluent_books_translator/component/decoration.dart';
import 'package:fluent_books_translator/component/fonts.dart';
import 'package:fluent_books_translator/component/img.dart';
import 'package:fluent_books_translator/component/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../CustomWidgets/ImageView.dart';
import '../services/Urls.dart';

class TranslationSingle extends StatefulWidget {
  const TranslationSingle({Key? key}) : super(key: key);
  static const String routeName = 'TranslationSingle';
  @override
  State<TranslationSingle> createState() => _TranslationSingleState();
}

class _TranslationSingleState extends State<TranslationSingle> {

  openWebPage() async{
    print('launch');
    var uri = Uri.parse(Urls.webUrl);
    try{
      if(await canLaunchUrl(uri)){
        await launch(Urls.webUrl);
      }else{
        print('Could launch this url');
      }
    }catch(e){
      if(await canLaunchUrl(uri)){
        await launchUrl(uri);
      }else{
        print('Could launch this url');
      }
    }



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: SafeArea(
        child: Container(
          color: white,
          child: Column(
            children: [
              AppBarView(
                preIcon: Img.backIOSWhiteIcon,
                preTap: (){
                  Navigator.pop(context);
                },
                backgroundColor: blue,
                title: translation,
              ),

              Expanded(child: Column(
                children: [
                  Container(
                    decoration: boxDecoration(borderColor: grey100, dottedBorder: true),
                    padding: EdgeInsets.symmetric(horizontal: s20* 2, vertical: s15),
                    margin: EdgeInsets.symmetric(vertical: s20),
                    child: ImageView(
                      Img.bookImg,
                      fit: BoxFit.cover,
                      height: 350,
                      radius: s15,
                      boxDeco: boxDecoration(borderColor: blue, radius: s15),
                    ),
                  )
                ],
              )),

              Padding(
                padding: EdgeInsets.all(s15),
                child: Row(
                  children: [
                    Expanded(
                      child: Button(label: 'Review',
                        labelStyle: txt_16_white,
                        boxDeco: boxDecoration(color: blue, radius: s10),
                        ontap: (){
                        },
                      ),
                    ),
                   SizedBox(width: s10,),
                   Expanded(
                      child: Button(label: 'Edit',
                        labelStyle: txt_16_blue,
                        boxDeco: boxDecoration(borderColor: blue, radius: s10),
                        ontap: openWebPage,
                      ),
                    ),
                    SizedBox(width: s10,),
                    Expanded(
                      child: Button(label: 'Delete',
                        labelStyle: txt_16_blue,
                        boxDeco: boxDecoration(borderColor: blue, radius: s10),
                        ontap: (){
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
