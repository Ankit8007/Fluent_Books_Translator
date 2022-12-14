import 'package:fluent_books_translator/src/register/AddAddress.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../CustomWidgets/Button.dart';
import '../../CustomWidgets/EditText.dart';
import '../../CustomWidgets/ImageView.dart';
import '../../CustomWidgets/TextView.dart';
import '../../Methods/Pickers.dart';
import '../../childWidgets/AvatarCard.dart';
import '../../childWidgets/BottomBanner.dart';
import '../../childWidgets/ChooseImage.dart';
import '../../component/appConstants.dart';
import '../../component/color.dart';
import '../../component/decoration.dart';
import '../../component/fonts.dart';
import '../../component/img.dart';
import '../../component/size.dart';
import '../../controller/AuthCtrl.dart';

class UploadIcon extends StatefulWidget {
  const UploadIcon({Key? key}) : super(key: key);
  static const routeName = 'UploadIcon';

  @override
  State<UploadIcon> createState() => _UploadIconState();
}

class _UploadIconState extends State<UploadIcon> {
  final AuthCtrl authX = Get.put(AuthCtrl());

  launchSheet() async {
    await openBottomSheet(
        context: context,
        child: ChooseImage(
          cameraTap: () => picker('camera'),
          galleryTap: () => picker('gallery'),
        ));
  }

  picker(var type) async {
    Navigator.pop(context);
    var imgPath = '';
    if (type == 'camera') {
      await launchCamera((status, path) {
        if (status) {
          imgPath = path;
        }
      });
    } else {
      await openGallery((status, path) {
        if (status) {
          imgPath = path;
        }
      });
    }
    if (imgPath.isNotEmpty) {
      authX.regData.photo = imgPath;
      authX.update();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_magentaRed,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(s15),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: ImageView(
                              Img.logoImg,
                              size: s15 * 8,
                            )),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: TextView(
                              uploadPhoto,
                              style: txt_18_white_600_CM,
                              marginTop: s40 * 2,
                              marginBottom: s20,
                            )),
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: GetBuilder<AuthCtrl>(builder: (controller) {
                                  return EditText(
                                    hint: '$uploadPhoto',
                                    hintStyle: txt_14_white,
                                    boxDeco: boxDecoration(
                                        radius: s10, borderColor: white),
                                    marginVertical: s20,
                                    marginRight: s10,
                                    readOnly: true,
                                    controller: TextEditingController(text: authX.regData.photo),
                                  );
                                }
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Button(
                                label: upload,
                                labelStyle: txt_13_white,
                                boxDeco: boxDecoration(color: blue, radius: s8),
                                ontap: launchSheet,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: s20 * 4,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GetBuilder<AuthCtrl>(builder: (controller) {
                              return SizedBox(
                                child: authX.regData.photo.isNotEmpty
                                    ? AvatarCard(
                                        src: authX.regData.photo,
                                        fit: BoxFit.cover,
                                        imageType: fileImage,
                                        size: s20 * 3,
                                        boxDeco: boxDecoration(
                                            color: grey, radius: s5),
                                        onDelete: () {
                                          authX.regData.photo = '';
                                          authX.update();
                                        },
                                      )
                                    : null,
                              );
                            }),
                          ),
                        ),
                        Button(
                          label: next,
                          labelStyle: txt_16_white,
                          boxDeco: boxDecoration(
                              color: blue, radius: s10, giveShadow: true),
                          marginVertical: s40,
                          ontap: () {
                            authX.uploadImage((status, msg, error) {
                              if (status) {
                                Fluttertoast.showToast(msg: msg);
                                Navigator.pushNamed(
                                    context, AddAddress.routeName);
                              } else {
                                Fluttertoast.showToast(msg: error);
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const BottomBanner(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
