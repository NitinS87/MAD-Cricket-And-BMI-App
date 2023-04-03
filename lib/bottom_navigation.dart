import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Cricket'),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'BMI Screen')
      ],
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/cricket');
            break;
          case 1:
            Navigator.pushNamed(context, '/bmi');
            break;
        }
      },
    );
  }
}
