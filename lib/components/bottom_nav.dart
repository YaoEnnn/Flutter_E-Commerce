import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget{
   const BottomNavBar({super.key, required this.onTabChange});

  final void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: GNav(
        color: Colors.grey,
        tabBorderRadius: 25,
        activeColor: Colors.black87,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.black12,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
        GButton(
            icon: Icons.home,
            gap: 5,
            text: 'Shop',
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          gap: 5,
          text: 'Cart',
        )
      ],
      ),
    );

  }

}