import 'package:aladin/constants/color.dart';
import 'package:aladin/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeMenuGenerator extends StatelessWidget {
  const HomeMenuGenerator({
    required this.menu,
    Key? key,
  }) : super(key: key);
  final List<Map<String, dynamic>> menu;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 10),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 140.w,
      ),
      itemCount: menu.length,
      itemBuilder: (context, item) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return menu.elementAt(item)['page'];
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(int.parse(menu.elementAt(item)['color'])),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                height: 130.h,
                width: 175.w,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          menu.elementAt(item)['imgUrl'],
                          fit: BoxFit.cover,
                          // height: double.infinity,
                          // width: double.infinity,
                          width: 50.w,
                          height: 50.h,
                          alignment: Alignment.center,
                          repeat: ImageRepeat.noRepeat,
                        ),
                      ),
                      addH(10.h),
                      Text(
                        menu.elementAt(item)['title'],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          height: 1.1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
