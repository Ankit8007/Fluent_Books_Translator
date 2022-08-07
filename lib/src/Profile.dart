import 'package:fluent_books_translator/CustomWidgets/ImageView.dart';
import 'package:fluent_books_translator/CustomWidgets/TextView.dart';
import 'package:fluent_books_translator/EditProfil.dart';
import 'package:fluent_books_translator/childWidgets/Avatar2.dart';
import 'package:fluent_books_translator/component/fonts.dart';
import 'package:flutter/material.dart';
import '../childWidgets/AppBarView.dart';
import '../component/appConstants.dart';
import '../component/color.dart';
import '../component/img.dart';
import '../component/size.dart';
import 'SideMenu.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  List<String> docList = [Img.doc1, Img.doc2];

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
                title: myProfile,
                backgroundColor: blue,
                preTap: () {
                  _key.currentState!.openDrawer();
                },
              ),
              Expanded(
                  child: SingleChildScrollView(
                padding: EdgeInsets.all(s15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Avatar2(
                            img: Img.avatar,
                            size: s20 * 3,
                            name: 'Olivia Rodrigo',
                            style: txt_14_black_500,
                            // padding: s20,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              TextView(
                                'Edit',
                                style: txt_10_black,
                                onTap: () => Navigator.pushNamed(
                                    context, EditProfile.routeName),
                              ),
                              ImageView(
                                Img.editIcon,
                                size: s15 * 2,
                                marginLeft: s5,
                                onTap: () => Navigator.pushNamed(
                                    context, EditProfile.routeName),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const DescCard(
                      header: 'Name',
                      data: 'Olivia Rodrigo',
                    ),
                    const DescCard(
                      header: 'Email',
                      data: '0livia@email.com',
                    ),
                    const DescCard(
                      header: 'Phone Number',
                      data: '+1 985 547 2222',
                    ),
                    const DescCard(
                      header: 'Address',
                      data:
                          "P.O. Box 4400 \nFredericton, New Brunswick \nE38 5A3",
                    ),
                    const DescCard(
                      header: 'Description of translator',
                      data: '+1 985 547 2222',
                    ),
                    DescCard(
                      header: 'Qualification documents',
                      childWd: SizedBox(
                        height: s20 * 6,
                        child: ListView.separated(
                            padding: EdgeInsets.symmetric(vertical: s10),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => ImageView(
                                  docList[index],
                                  fit: BoxFit.fill,
                                  //boxDeco: boxDecoration(borderColor: grey100, radius: s10),
                                ),
                            separatorBuilder: (context, index) =>
                                SizedBox(width: s10),
                            itemCount: docList.length),
                      ),
                    ),
                  ],
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

class DescCard extends StatelessWidget {
  const DescCard({Key? key, required this.header, this.data, this.childWd})
      : super(key: key);
  final String header;
  final String? data;
  final Widget? childWd;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: s15),
          child: const Divider(
            color: grey,
          ),
        ),
        TextView(header, style: txt_12_blue_600),
        SizedBox(
          child: data != null
              ? TextView(
                  data ?? '',
                  style: txt_12_grey100,
                )
              : null,
        ),
        SizedBox(child: childWd)
      ],
    );
  }
}
