import 'dart:io';

import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/profile/view/widget/custom_text_field.dart';
import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:aladin/modules/routine/widget/button.dart';
// import 'package:aladin/modules/routine/widget/custom_appbar.dart';
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  File? selectedImage;

  //select image from gallery
  Future pickeImage() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    // if (returnedImage == null) return;
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar2(
          title: 'Edit Profile',
          tap: () {
            Get.back();
          }),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),

            //profile pic
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: 100.h,
                  width: 100.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      50.r,
                    ),
                    child: selectedImage != null
                        ? Image.file(
                            fit: BoxFit.cover,
                            height: 100.h,
                            width: 100.w,
                            selectedImage!,
                          )
                        : Image.asset(
                            fit: BoxFit.cover,
                            'assets/profile/profile.png',
                          ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    pickeImage();
                  },
                  child: Icon(
                    Icons.camera_alt,
                    size: 30,
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20.h,
            ),
            Column(
              children: [
                Text(
                  'Upload Image',
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT Bold',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.info),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Profile Information',
                                style: TextStyle(
                                  fontFamily: 'Arial Rounded MT Bold',
                                  fontSize: 17.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const CustomTextField(
                        hintText: 'Lorium Ipsum ',
                        title: 'Full Name',
                      ),
                      const CustomTextField(
                        title: 'Teacher’s ID ',
                        hintText: '12536776575',
                      ),
                      const CustomTextField(
                        title: 'Designation',
                        hintText: 'Associate Professor of English',
                      ),
                      const CustomTextField(
                        title: ' School Name',
                        hintText: 'Dhanmondi High School',
                      ),
                      const CustomTextField(
                        title: 'Branch',
                        hintText: 'Dhanmondi',
                      ),
                      const CustomTextField(
                        icon: Icons.edit,
                        title: 'Mobile Number',
                        hintText: '0123456789',
                      ),
                      const CustomTextField(
                        title: 'Address',
                        hintText: 'Mirpur,Dhaka',
                      ),
                      const CustomTextField(
                        title: 'Date of Birth',
                        hintText: '15.8.2023',
                      ),
                      const CustomTextField(
                        title: 'Age',
                        hintText: '27',
                      ),
                      const CustomTextField(
                        title: 'Joining Date',
                        hintText: 'August 17,2023',
                      ),
                      const CustomTextField(
                        title: 'Graduated From',
                        hintText: 'Dhaka University',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            child: const Button(
                              size: 160,
                              title: 'Cancel',
                              color: Colors.white,
                              textColor: buttonColor,
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.to(SuccessFull(
                                successFullMessage: 'Successfully Changed')),
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //   builder: (context) => ,
                            // )),
                            child: const Button(
                              size: 160,
                              title: 'Save',
                              color: buttonColor,
                              textColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
