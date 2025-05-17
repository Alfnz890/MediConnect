import 'package:flutter/material.dart';
import 'package:flutter_application_1v4/pages/utils/colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
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
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        'lib/assets/icons/search.png',
                        width: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Image Profile & Name & Member
                Center(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'lib/assets/profile.jpg',
                          width: 130,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Williamson',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Premium Member 🪙'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                // Height, Weight, Age, Blood
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset('lib/assets/icons/height.png', width: 35),
                        SizedBox(height: 15),
                        Text('Height', style: TextStyle(color: Colors.grey)),
                        Text(
                          '177 Cm',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'lib/assets/icons/weighing-machine.png',
                          width: 35,
                        ),
                        SizedBox(height: 15),
                        Text('Weight', style: TextStyle(color: Colors.grey)),
                        Text(
                          '62 Kg',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'lib/assets/icons/age-group.png',
                          width: 35,
                        ),
                        SizedBox(height: 15),
                        Text('Age', style: TextStyle(color: Colors.grey)),
                        Text(
                          '30',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('lib/assets/icons/blood.png', width: 35),
                        SizedBox(height: 15),
                        Text('Blood', style: TextStyle(color: Colors.grey)),
                        Text(
                          'A',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // About me
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Me',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem, consequuntur. Iusto perferendis earum asperiores recusandae, ad maxime eius quo vero.',
                      softWrap: true,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
