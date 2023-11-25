import 'package:flutter/material.dart';
import 'package:industrial_project/const/color.dart';
import 'package:industrial_project/screens/CartScreen/cart_screen.dart';
import 'package:industrial_project/screens/HomeScreen/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const Center(child: Text('Favorite'),),
    const CartScreen(),
    const Center(child: Text('Person'),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: Colors.black.withOpacity(.5), 
        showUnselectedLabels: false,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded),label: 'Person')
        ]),
    );
  }
}