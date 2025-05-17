import 'package:flutter/material.dart';
import 'package:flutter_application_1v4/pages/appointment.dart';
import 'package:flutter_application_1v4/pages/doctors.dart';
import 'package:flutter_application_1v4/pages/home.dart';
import 'package:flutter_application_1v4/pages/messages.dart';
import 'package:flutter_application_1v4/pages/more.dart';
import 'package:flutter_application_1v4/pages/utils/colors.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({super.key});

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {

  int selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Doctors(),
    Appointment(),
    Messages(),
    More()
  ];

  void _onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTabItem(icon: Icons.home, label: 'Home', index: 0),
              _buildTabItem(icon: Icons.person, label: 'Doctors', index: 1),
              SizedBox(width: 40),
              _buildTabItem(icon: Icons.chat, label: 'Messages', index: 3),
              _buildTabItem(icon: Icons.menu, label: 'More', index: 4),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () => _onTabTapped(2),
        child: Icon(Icons.calendar_month, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(
        index: selectedIndex,
        children: _pages,
      ),
    );
  }

  Widget _buildTabItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => _onTabTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? primaryColor : Colors.grey),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? primaryColor : Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}