import 'package:flutter/material.dart';
import 'package:flutter_application_1v4/pages/profile.dart';
import 'package:flutter_application_1v4/pages/utils/colors.dart';

class Moretile extends StatelessWidget {
  final IconData icon;
  final String label;

  const Moretile({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile()),
        );
      },
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(17),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(icon, color: Colors.grey),
              ),
              SizedBox(width: 13),
              Text(label, style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
