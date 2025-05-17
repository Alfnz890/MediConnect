import 'package:flutter/material.dart';
import 'package:flutter_application_1v4/models/spesialistModel.dart';
import 'package:flutter_application_1v4/pages/utils/colors.dart';

class Symtomstile extends StatelessWidget {
  final Spesialistmodel spesialistmodel;
  const Symtomstile({super.key, required this.spesialistmodel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(17),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Image.asset(spesialistmodel.image, width: 40),
        ),
        SizedBox(height: 10),
        Text(
          spesialistmodel.label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
