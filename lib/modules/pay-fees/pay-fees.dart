// import 'package:aladin/constants/color.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
// import 'package:aladin/modules/successfull/success-full.dart';
import 'package:aladin/widget/globar-title.dart';
import 'package:aladin/widget/image-payment-dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widget/custom-text.dart';
import '../../widget/global-appbar.dart';
import '../../widget/selection-btn.dart';
import '../../widget/text-field.dart';
import '../onbording/view/componant.dart';
import '../routine/view/screen/successfull_page.dart';

class PayFeesPage extends StatefulWidget {
  const PayFeesPage({super.key});

  @override
  State<PayFeesPage> createState() => _PayFeesPageState();
}

class _PayFeesPageState extends State<PayFeesPage> {
  int _selectedValue = 1;
  String _selectedItem = "bkashicon";
  @override
  Widget build(BuildContext context) {
    List<PaySelectModel> selectPaymentType = [
      PaySelectModel(id: 1, title: "Tuition Fees"),
      PaySelectModel(id: 2, title: "Transport Fees"),
      PaySelectModel(id: 3, title: "Exam Fees"),
      PaySelectModel(id: 4, title: "Librery Fees"),
      PaySelectModel(id: 5, title: "Lab Fees"),
    ];
    return Scaffold(
        appBar: globalAppbar(context, "Pay Fees", () {
          Get.back();
        }),
        body: ListView(
            padding: const EdgeInsets.symmetric(vertical: 20),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleText(
                      title: "Student Name",
                    ),
                    CustomTextField(
                      textInputType: TextInputType.name,
                      hint: "Enter Name",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    const TitleText(title: "Student ID"),
                    CustomTextField(
                      textInputType: TextInputType.text,
                      hint: "Enter ID",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    const TitleText(title: "Payment Category"),
                  ],
                ),
              ),

              //choose-payment type
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: List.generate(
                    selectPaymentType.length,
                    (index) => RadioTextItem(
                      value: selectPaymentType[index].id,
                      groupValue: _selectedValue,
                      onChanged: (value) {
                        setState(() {
                          _selectedValue = value!;
                        });
                      },
                      text: selectPaymentType[index].title,
                      activeColor: buttonColor,
                    ),
                  ),
                ),
              ),

              //select payment method
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleText(
                      title: "Select Payment Method",
                    ),
                    CustomImageDropdown(
                        items: const ['bkashicon', 'nagad', 'rocketicon'],
                        value: _selectedItem,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedItem = newValue!;
                          });
                        },
                        onItemChanged: () {
                          // setState(() {
                          // if (_selectAsset == "bkashicon") {
                          //   _selectedItem = "bkashicon";
                          // } else if (_selectAsset == "nagad") {
                          //   _selectedItem = "nagad";
                          // } else if (_selectAsset == "rocketicon") {
                          //   _selectedItem = "rocketicon";
                          // }
                          //});
                        },
                        iconAsset: 'assets/icons/down-arrow.png'),
                    const SizedBox(
                      height: 18.0,
                    ),

                    //amount,account no, transcation
                    const TitleText(title: "Payment Amount"),
                    CustomTextField(
                      textInputType: TextInputType.text,
                      hint: "Enter Amount",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    const TitleText(title: "Account Number"),
                    CustomTextField(
                      textInputType: TextInputType.number,
                      hint: "Enter Number",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    const TitleText(title: "Transation ID"),

                    CustomTextField(
                      textInputType: TextInputType.text,
                      hint: "Enter ID",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 35),

                    //button
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 120.w),
                      child: CustomButton(
                          widget: TextW(
                            title: "Submit",
                            color: Colors.white,
                            size: 14.sp,
                          ),
                          onPressed: () {
                            Get.to(
                              SuccessFull(
                                successFullMessage: "Successfully Submitted",
                              ),
                            );
                          },
                          buttonStyle: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(26.r))),
                              backgroundColor:
                                  MaterialStatePropertyAll(buttonColor)),
                          width: 103.w,
                          height: 48.h),
                    )
                  ],
                ),
              )
            ]));
  }
}

class PaySelectModel {
  final int id;
  final String title;

  PaySelectModel({required this.id, required this.title});
}
