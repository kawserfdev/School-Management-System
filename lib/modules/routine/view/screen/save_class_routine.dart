import 'package:aladin/modules/routine/view/screen/successfull_page.dart';
import 'package:aladin/modules/routine/widget/button.dart';
import 'package:aladin/modules/routine/widget/drop_down_item.dart';
import 'package:flutter/material.dart';

import 'package:aladin/modules/routine/widget/custom_appbar.dart';

class SaveClassRoutine extends StatelessWidget {
  const SaveClassRoutine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(title: 'Create Class Routine'),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    const DropDownItem(name: 'Start Time', item: '12:30Pm'),
                    const DropDownItem(name: 'End Time', item: '1:30pm'),
                    const DropDownItem(name: 'Subject', item: 'English'),
                    const DropDownItem(name: 'Teacher', item: 'Mohiuddin'),
                    const DropDownItem(name: 'Status', item: 'Active'),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Button(
                            size: 160,
                            title: "Cancel",
                            color: Colors.white,
                            textColor: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SuccessFull(
                                    successFullMessage: 'SuccessFully Created'),
                              )),
                          child: const Button(
                            size: 160,
                            title: "Save",
                            color: Color(0xFF0E3D67),
                            textColor: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
