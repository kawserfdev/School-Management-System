import 'package:aladin/modules/helpcenter/module/view/widgets/color_pattern.dart';
import 'package:aladin/modules/live_chat/notification.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/profile/model/profile_info_model.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatUser {
  final String title;
  final int sender;

  ChatUser(
    this.sender, {
    required this.title,
  });
}

class LiveChatScreen extends StatefulWidget {
  const LiveChatScreen({super.key});

  @override
  State<LiveChatScreen> createState() => _LiveChatScreenState();
}

class _LiveChatScreenState extends State<LiveChatScreen> {
  TextEditingController massageController = TextEditingController();
  List<ChatUser> smsList = List.empty(growable: true);
  bool sender = false;
  @override
  void initState() {
    // TODO: implement initState
    smsList.add(ChatUser(
      1,
      title: 'text1 ',
    ));
    smsList.add(ChatUser(
      0,
      title: 'text2 ',
    ));
    smsList.add(ChatUser(
      1,
      title: 'text3 ',
    ));
    smsList.add(ChatUser(
      1,
      title: 'text6 ',
    ));
    smsList.add(ChatUser(
      0,
      title: 'text7 ',
    ));
    smsList.add(ChatUser(
      1,
      title: 'text6 ',
    ));
    smsList.add(ChatUser(
      0,
      title: 'text9 ',
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            appBar: globalAppbar(context, 'Live Chat', () {
              Get.back();
            }),
            resizeToAvoidBottomInset: true,
            body: Padding(
              padding: EdgeInsets.only(
                  top: 0.h, left: 20.w, right: 20.w, bottom: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: SizedBox(
                      child: ListView.builder(
                       // reverse: true,
                        itemCount: smsList.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          if (smsList[index].sender == 1)
                            return Padding(
                              padding:  EdgeInsets.fromLTRB(0.0, 5.h, 0.0, 5.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/helpcenter/Ellipse185.png'),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: chatColor1,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        smsList[index].title,
                                        style:
                                            GoogleFonts.roboto(fontSize: 12.sp),
                                        // textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  //?
                                ],
                              ),
                            );
                          if (smsList[index].sender == 0)
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(100.w, 3.h, 0.0, 3.h),
                                  padding: EdgeInsets.all(8.r),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: appBarColor,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      smsList[index].title,
                                      style: GoogleFonts.roboto(fontSize: 12.sp,color: Colors.black87),
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            );
                        },
                      ),
                    ),
                  ),
                  //?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/helpcenter/ph_camera.png',
                          color: appBarColor,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/helpcenter/mdi_microphone.png',
                          color: appBarColor,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/helpcenter/attachment.png',
                          color: appBarColor,
                        ),
                      ),
                      // SizedBox(width: 10.w),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w, right: 10.w),
                          child: TextFormField(
                            controller: massageController,

                            cursorColor: Colors.black,
                            // cursorHeight: 18.h,
                            cursorWidth: 1.w,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: chatColor2,
                              contentPadding:
                                  EdgeInsets.only(left: 10.w, right: 10.w),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Write Your Massage...',
                              hintStyle: GoogleFonts.roboto(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                      ), // Container(

                      InkWell(
                        onTap: () {
                          //Get.to(const NotificationsScreen());
                          if (sender == false) {
                            sender = true;
                          } else {
                            sender = false;
                          }
                          smsList.add(ChatUser(
                            sender == false ? 0 : 1,
                            title: massageController.text,
                          ));
                          setState(() {
                            massageController.text = '';
                          });
                        },
                        child: Image.asset(
                          'assets/helpcenter/carbon_send.png',
                          color: appBarColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
