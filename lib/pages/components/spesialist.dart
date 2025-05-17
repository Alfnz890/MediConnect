import 'package:flutter/material.dart';
import 'package:flutter_application_1v4/pages/utils/colors.dart';

class Spesialist extends StatelessWidget {
  final String image, label;

  const Spesialist({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Image.asset(image, width: 40),
        ),
        SizedBox(height: 10),
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
