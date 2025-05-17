import 'package:flutter/material.dart';
import 'package:flutter_application_1v4/models/spesialistModel.dart';
import 'package:flutter_application_1v4/pages/components/symtomsTile.dart';
import 'package:flutter_application_1v4/pages/utils/colors.dart';

class Symsthom extends StatelessWidget {
  const Symsthom({super.key});

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
                    Text(
                      'Find Your Doctor',
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
                // list
                SizedBox(height: 30),
                SizedBox(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    children: List.generate(listOfSpesialist.length, (index) {
                      final total = listOfSpesialist[index];
                      return Symtomstile(spesialistmodel: total);
                    }),
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
