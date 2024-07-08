import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(items: [

        BottomNavigationBarItem(icon: Icon(Icons.home, color: color,), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.fastfood_outlined,color: color), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.sports_gymnastics, color: color), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person, color: color), label: 'Home'),


      ],
      ),
    );
  }
}




