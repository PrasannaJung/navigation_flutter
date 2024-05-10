import 'package:flutter/material.dart';
import 'package:navigation/screen/about_screen.dart';
import 'package:navigation/screen/cart_screen.dart';
import 'package:navigation/screen/home_screen.dart';
import 'package:navigation/screen/profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  List<Widget> listOfScreens = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
    const AboutScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: listOfScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "About",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (idx){
          setState(() {
            _selectedIndex = idx;
          });
        },
      )
    );
  }
}
