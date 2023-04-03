import 'package:flutter/material.dart';
import 'package:midterm/bmi_screen.dart';
import 'package:midterm/cricket_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext ctx) {
    final List<String> menuTitles = [
      'Cricket',
      'BMI Screen',
    ];

    List<Widget> menuItems = [];

    menuItems.add(
      const DrawerHeader(
        decoration: BoxDecoration(color: Colors.amberAccent),
        child: Center(
          child: Text(
            'Nitin And Sethi App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );

    for (var element in menuTitles) {
      Widget screen = Container(); // it holds an empty container
      menuItems.add(ListTile(
        title: Text(
          element,
          style: const TextStyle(fontSize: 22),
        ),
        onTap: () {
          switch (element) {
            case 'Cricket':
              screen = const CricketScreen();
              break;
            case 'BMI Screen':
              screen = const BMIScreen();
              break;
          }
          Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => screen));
        },
      ));
    }

    return menuItems;
  }
}
