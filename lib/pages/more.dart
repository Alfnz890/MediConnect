import 'package:flutter/material.dart';
import 'package:flutter_application_1v4/pages/components/moreTile.dart';
import 'package:flutter_application_1v4/pages/components/profileHeader.dart';
import 'package:flutter_application_1v4/pages/utils/colors.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Profileheader(),
                SizedBox(height: 20),
                Text(
                  'More',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Moretile(icon: Icons.settings, label: 'General Settings'),
                      Moretile(
                        icon: Icons.credit_card,
                        label: 'Payments History',
                      ),
                      Moretile(
                        icon: Icons.question_answer,
                        label: 'Frequently Asked Question',
                      ),
                      Moretile(
                        icon: Icons.favorite,
                        label: 'Favourite Doctors',
                      ),
                      Moretile(icon: Icons.report, label: 'Test Reports'),
                      Moretile(icon: Icons.book, label: 'Terms & Conditions'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
