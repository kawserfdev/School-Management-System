import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpleDropdownWidget extends StatefulWidget {
  const SimpleDropdownWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SimpleDropdownWidgetState createState() => _SimpleDropdownWidgetState();
}

class _SimpleDropdownWidgetState extends State<SimpleDropdownWidget> {
  String selectedCity = 'Select Type'; // Default selected city

  List<String> cities = [
    'Select Type',
    // 'English',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      icon: Icon(
        Icons.keyboard_arrow_down_sharp,
        size: 24.sp,
      ),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            // style: BorderStyle.none,
            width: 0.03.w,
            color: Colors.grey,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.03.w,
            color: Colors.grey,
          ),
        ), // Set the border here
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
      ),
      value: selectedCity,
      onChanged: (newValue) {
        setState(() {
          selectedCity = newValue.toString();
        });
      },
      items: cities.map<DropdownMenuItem<String>>((String city) {
        return DropdownMenuItem<String>(
          value: city,
          child: Text(city,
              style: GoogleFonts.roboto(
                fontSize: 16.sp,
              )),
        );
      }).toList(),
    );
  }
}
