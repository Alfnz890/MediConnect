import 'package:flutter/material.dart';
import 'package:flutter_application_1v4/pages/utils/colors.dart';

class Doctordetail extends StatefulWidget {
  const Doctordetail({super.key});

  @override
  State<Doctordetail> createState() => _DoctordetailState();
}

class _DoctordetailState extends State<Doctordetail> {
  int? _selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Headers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.keyboard_arrow_left),
                    ),
                    // Text(
                    //   'Doctor Profile',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 18,
                    //   ),
                    // ),
                  ],
                ),

                SizedBox(height: 40),

                // image name specialist rating
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('lib/assets/doctor2.jpg', width: 100),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Anya Petrovka',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'MBBS. MD (Neurology)',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 3),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('⭐'),
                            SizedBox(width: 6),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '4.5',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '2530',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 24),

                // specialist
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text('Neuralist'),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text('Neuralist'),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text('Neuralist'),
                    ),
                  ],
                ),

                SizedBox(height: 24),

                // biography
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Doctor Biography',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi laboriosam impedit amet consequuntur obcaecati laborum esse, tempore alias deserunt adipisci reiciendis maxime quia repellat ratione voluptatem reprehenderit, provident porro veniam.',
                      softWrap: true,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),

                SizedBox(height: 24),

                // schedule date
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Schedule',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text('Oct 2024'),
                      ],
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 60,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 30,
                        itemBuilder: (context, index) {
                          final angka = index + 1;
                          final isSelected = _selectedIndex == index;

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                            child: SizedBox(
                              width: 70.0,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isSelected
                                          ? primaryColor
                                          : secondaryColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Center(
                                  child: Text(
                                    '$angka',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          isSelected
                                              ? Colors.white
                                              : Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                // schedule time -> evening, afternoon
                // schedule time -> 12.00, 01.00
                // btn book appointment
              ],
            ),
          ),
        ),
      ),
    );
  }
}
