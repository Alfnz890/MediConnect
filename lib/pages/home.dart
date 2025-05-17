import 'package:flutter/material.dart';
import 'package:flutter_application_1v4/models/doctor.dart';
import 'package:flutter_application_1v4/pages/components/doctorsTile.dart';
import 'package:flutter_application_1v4/pages/components/profileHeader.dart';
import 'package:flutter_application_1v4/pages/components/spesialist.dart';
import 'package:flutter_application_1v4/pages/symsthom.dart';
import 'package:flutter_application_1v4/pages/utils/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Account name
                Profileheader(),

                SizedBox(height: 30),

                // Hero banner
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Looking for\ndesired doctor?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 16),
                        child: Image.asset('lib/assets/hero.png', width: 140),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                // find doctor
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Find your doctor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Symsthom(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Text('See All', style: TextStyle(fontSize: 16)),
                                Icon(Icons.keyboard_arrow_right),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spesialist(
                            image: 'lib/assets/icons/brain.png',
                            label: 'Neurology',
                          ),
                          Spesialist(
                            image: 'lib/assets/icons/heart.png',
                            label: 'Cardiology',
                          ),
                          Spesialist(
                            image: 'lib/assets/icons/arthritis.png',
                            label: 'Orthopedics',
                          ),
                          Spesialist(
                            image: 'lib/assets/icons/skin.png',
                            label: 'Pathology',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                // popular doctor
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular Doctors',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => print('object'),
                            child: Row(
                              children: [
                                Text('See All', style: TextStyle(fontSize: 16)),
                                Icon(Icons.keyboard_arrow_right),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),

                      // List of doctor
                      Container(
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:
                              doctorList.length >= 3 ? 3 : doctorList.length,
                          itemBuilder: (context, index) {
                            final doctor = doctorList[index];
                            return Doctorstile(doctor: doctor);
                          },
                        ),
                      ),
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
