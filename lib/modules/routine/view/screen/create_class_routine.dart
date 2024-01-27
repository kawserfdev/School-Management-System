import 'package:aladin/modules/routine/view/screen/save_class_routine.dart';
import 'package:aladin/modules/routine/widget/button.dart';
import 'package:aladin/modules/routine/widget/drop_down_item.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widget/global-appbar2.dart';

class CreateClassRoutine extends StatelessWidget {
  const CreateClassRoutine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: GlobalAppbar2(
          title: 'Create Class Routine',
          tap: () {
            Get.back();
          }),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              children: [
                const DropDownItem(name: 'Class', item: 'Select class'),
                const DropDownItem(name: 'Shift', item: 'Select shift'),
                const DropDownItem(name: 'Section', item: 'Select section'),
                const DropDownItem(name: 'Tiffin', item: 'Yes'),

                //tiffin time
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Tiffin Time',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 48,
                          width: 170,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Start Time',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 15,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey
                                      .shade200, // Set the border color here
                                  width: 2, // Set the border width
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          width: 170,
                          child: TextField(
                            decoration: InputDecoration(
                              disabledBorder: InputBorder.none,
                              hintText: 'End Time',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 15,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey
                                      .shade200, // Set the border color here
                                  width: 1.5, // Set the border width
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Day',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SaveClassRoutine(),
                            )),
                        child: const Button(
                          size: 150,
                          title: 'Next',
                          textColor: Colors.white,
                          color: Color(0xFF0E3D67),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
