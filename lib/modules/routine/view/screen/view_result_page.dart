import 'package:aladin/modules/routine/view/screen/result_sheet.dart';
import 'package:aladin/modules/routine/widget/button.dart';
import 'package:aladin/modules/routine/widget/drop_down_item.dart';
import 'package:aladin/modules/routine/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

class ViewResultPage extends StatelessWidget {
  const ViewResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          children: [
            const CustomAppBar(title: 'Create Class Routine'),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const DropDownItem(name: 'Class', item: 'Select class'),
                    const DropDownItem(name: 'Shift', item: 'Select shift'),
                    const DropDownItem(name: 'Section', item: 'Select section'),
                    const DropDownItem(name: 'Subject', item: 'Select Subject'),
                    const DropDownItem(
                        name: 'Exam Platform', item: 'Select Platform'),
                    const DropDownItem(name: 'Exam Term', item: '1st Term'),

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
                          height: 25,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ResultSheet(),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
