import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/exam/view/offline-exam.dart';
import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/modules/profile/view/widget/custom_text_field.dart';
// import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// import '../../../constants/color.dart';
import '../../../widget/custom-text.dart';
import '../../../widget/dropdown-border-round.dart';
import '../../../widget/global-appbar.dart';
import '../../onbording/view/componant.dart';
// import '../../successfull/success-full.dart';

class SeatPlanPage extends StatefulWidget {
  const SeatPlanPage({super.key});

  @override
  State<SeatPlanPage> createState() => _SeatPlanPageState();
}

class _SeatPlanPageState extends State<SeatPlanPage> {
  String roomNo = "Select Room No";
  String buildingName = "Select Building Name";
  String seatArrange = "Select Seat Arrangement";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppbar(context, "Seat Plan", () {
        Get.back();
      }),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        children: [
          Image.asset(
            "assets/image/Exam Seat Plan 1.png",
            height: 178.h,
          ),
          addH(30.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextW(
                title: "Room Number",
                size: 16.sp,
              ),
              addH(5.h),
              SizedBox(
                width: double.infinity,
                child: CustomDropdown(
                    items: const ["Select Room No", "One", "Two", "Three"],
                    value: roomNo,
                    onChanged: (value) {
                      setState(() {
                        roomNo = value;
                      });
                    },
                    iconAsset: 'assets/icons/down-arrow.png'),
              )
            ],
          ),
          addH(20.h),
          const CustomTextField(
            title: "Roll Number",
            hintText: "00",
          ),
          const CustomTextField(
            title: "Student Id",
            hintText: "0000000",
          ),
          const CustomTextField(
            title: "Building Name",
            hintText: "Enter Building Name",
          ),
          addH(40.h),
          Card(
            elevation: 1.0,
            child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 24,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisExtent: 40.w,
                    mainAxisSpacing: 20.w,
                    crossAxisSpacing: 20.h),
                itemBuilder: (context, index) {
                  return CircleAvatar(
                    radius: 20.w,
                    backgroundColor: const Color(0xffD9D9D9),
                    child: TextW(title: (index + 1).toString()),
                  );
                }),
          ),
          addH(50.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: CustomButton(
                widget: TextW(
                  title: "Back To Offline Exam",
                  fontFamily: 'Arial Rounded MT Bold',
                  color: Colors.white,
                  size: 16.sp,
                ),
                onPressed: () {
                  Get.to(OfflineExamPage());
                },
                buttonStyle: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r))),
                    backgroundColor: MaterialStatePropertyAll(buttonColor)),
                width: 214.8.w,
                height: 40.27.h),
          )
        ],
      ),
    );
  }
}
