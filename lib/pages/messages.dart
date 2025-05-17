import 'package:flutter/material.dart';
import 'package:flutter_application_1v4/models/doctor.dart';
import 'package:flutter_application_1v4/pages/components/chatTile.dart';
import 'package:flutter_application_1v4/pages/components/profileHeader.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

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
                  'Inbox',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: doctorList.length,
                  itemBuilder: (context, index) {
                    final doctor = doctorList[index];
                    return Chattile(doctor: doctor);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
