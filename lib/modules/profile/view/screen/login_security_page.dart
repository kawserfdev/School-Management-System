import 'package:aladin/helper/helper.dart';
// import 'package:aladin/modules/routine/widget/custom_appbar.dart';
import 'package:aladin/widget/global-appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSecurityPage extends StatelessWidget {
  const LoginSecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar2(
          title: 'Login & Security',
          tap: () {
            Get.back();
          }),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Last Login Devices',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial Rounded MT Bold',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Samsung Galaxy',
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '15 Augu 2023 Galaxy',
                      style: GoogleFonts.roboto(
                        color: Color(0xFF908F95),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '10.00 pm',
                      style: GoogleFonts.roboto(
                        color: Color(0xFF908F95),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Dhaka',
                      style: GoogleFonts.roboto(
                        color: Color(0xFF908F95),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Security',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial Rounded MT Bold',
                      ),
                    ),
                    addH(10.h),
                    Text(
                      """Lorem ipsum dolor sit amet consectetur. Dignissim duis massa fames tristique. Euismod id faucibus arcu rutrum amet. Eros ut pharetra risus sagittis dui cras. Lectus tellus risus elementum orci dictum turpis convallis a tellus. Faucibus nisl lorem tincidunt sollicitudin placerat congue tortor. Vulputate phasellus malesuada risus massa arcu scelerisque a. Vestibulum tellus ac cursus purus non nunc massa purus non. Pellentesque posuere pellentesque senectus duis turpis turpis accumsan. Non nulla aliquet mauris aliquam nullam nunc.""",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.roboto(),
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
