import 'package:flutter/material.dart';

import '../constants/color.dart';

class CustomImageDropdown extends StatelessWidget {
  final List<String> items;
  final String value;
  final ValueChanged onChanged;
  final Function onItemChanged;
  final String iconAsset;

  const CustomImageDropdown({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
    required this.onItemChanged,
    required this.iconAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: ConstantColors.border),
          borderRadius: BorderRadius.circular(8.0)),
      child: DropdownButton<String>(
        underline: const SizedBox.shrink(),
        icon: Image.asset(
          iconAsset,
          height: 20,
        ),
        isExpanded: true,
        value: value,
        onChanged: onChanged,
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            onTap: onItemChanged(),
            value: value,
            child: Image.asset(
              'assets/icons/$value.png',
              width: 60,
              height: 30,
            ),
          );
        }).toList(),
      ),
    );
  }
}
