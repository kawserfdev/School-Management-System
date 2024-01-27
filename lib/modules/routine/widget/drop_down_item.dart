import 'package:flutter/material.dart';

class DropDownItem extends StatelessWidget {
  const DropDownItem({
    super.key,
    required this.name,
    required this.item,
  });

  final String name;
  final String item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey.shade200, // Set the border color here
              width: 1.5, // Set the border width
            ),
          ),
          child: DropdownButton<String>(
            underline: const SizedBox(),
            isExpanded: true,
            iconSize: 30,
            borderRadius: BorderRadius.circular(10),
            itemHeight: 50,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 15,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            menuMaxHeight: 200,
            icon: Image.asset('assets/routine/arrow-down.png'),
            items: [
              const DropdownMenuItem(
                value: '1',
                child: Text('Select'),
              ),
              const DropdownMenuItem(
                value: '2',
                child: Text('Class'),
              ),
              DropdownMenuItem(
                child: Text(item),
              ),
            ],
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
