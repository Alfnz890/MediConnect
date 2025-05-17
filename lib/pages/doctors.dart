import 'package:flutter/material.dart';
import 'package:flutter_application_1v4/models/doctor.dart';
import 'package:flutter_application_1v4/pages/components/doctorsTile.dart';
import 'package:flutter_application_1v4/pages/components/profileHeader.dart';
import 'package:flutter_application_1v4/pages/utils/colors.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  int selectedIndex = 0;

  void onButtonTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget buildButton(String label, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onButtonTapped(index),
      child: Container(
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          label,
          style: TextStyle(color: isSelected ? Colors.black : Colors.grey),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Profileheader(),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildButton('Neurolist', 0),
                    buildButton('Neuromedicine', 1),
                    buildButton('Medicine', 2),
                    buildButton('Psychiatry', 3),
                  ],
                ),
                SizedBox(height: 25),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: doctorList.length,
                  itemBuilder: (context, index) {
                    final doctor = doctorList[index];
                    return Doctorstile(doctor: doctor);
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
