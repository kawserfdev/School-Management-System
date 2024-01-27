import 'package:aladin/modules/routine/styles/colors.dart';
import 'package:aladin/modules/routine/view/screen/create_class_routine.dart';
import 'package:aladin/modules/routine/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widget/global-appbar2.dart';

class ClassRoutine extends StatelessWidget {
  const ClassRoutine({super.key});

  @override
  Widget build(BuildContext context) {
    const String classRoutine = 'assets/routine/view-routine.png';
    const String examRoutine = 'assets/routine/create-routine.png';
    final imageList = [classRoutine, examRoutine];
    final List colorList = [purpleShade, yellowShade];
    final List<String> titleList = ['View Routine', 'Create Routine'];
    return Scaffold(
      appBar: GlobalAppbar2(
          title: 'Class Routine',
          tap: () {
            Get.back();
          }),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                ),
                itemCount: 2,
                itemBuilder: (context, index) => GridTile(
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateClassRoutine(),
                        )),
                    child: MyCard(
                      icon: Image.asset(
                        fit: BoxFit.contain,
                        imageList[index],
                      ),
                      title: titleList[index],
                      color: colorList[index],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
