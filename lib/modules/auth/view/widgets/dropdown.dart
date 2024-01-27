import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDropdownWidget extends StatefulWidget {
  const MyDropdownWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyDropdownWidgetState createState() => _MyDropdownWidgetState();
}

class _MyDropdownWidgetState extends State<MyDropdownWidget> {
  String selectedCity = 'Select Branch'; // Default selected city

  List<String> cities = [
    'Select Branch',
    // 'English',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        fillColor: const Color(0xFFF9FAFF),
        filled: true,
        // focusedBorder: InputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide.none), // Set the border here
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
          child: Text(
            city,
            style: const TextStyle(fontWeight: FontWeight.normal),
          ),
        );
      }).toList(),
    );
  }
}
