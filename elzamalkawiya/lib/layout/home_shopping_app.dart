// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ShoppingHome extends StatefulWidget {
  const ShoppingHome({super.key});

  @override
  State<ShoppingHome> createState() => _ShoppingHomeState();
}

class _ShoppingHomeState extends State<ShoppingHome> {
  final List<Widget> _screens = [
    Container(
      color: Colors.green,
      alignment: Alignment.center,
      child: Text(
        'home',
        style: TextStyle(
          fontSize: 40.0,
        ),
      ),
    ),
    Container(
      color: Colors.blueGrey,
      alignment: Alignment.center,
      child: Text(
        'tanndnd',
        style: TextStyle(
          fontSize: 40.0,
        ),
      ),
    ),
    Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        'dsssss',
        style: TextStyle(
          fontSize: 40.0,
        ),
      ),
    ),
    Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: Text(
        'me',
        style: TextStyle(
          fontSize: 40.0,
        ),
      ),
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   title: Text(
          //     'ShoppingHome',
          //   ),
          // ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.indigoAccent,
            onTap: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.pregnant_woman,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop_2_outlined,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: 'Home',
              ),
            ],
          ),
          body: Row(
            children: [
              NavigationRail(
                onDestinationSelected: ((int index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }),
                selectedIndex: selectedIndex,
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: Text(
                      'Home',
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.pregnant_woman,
                    ),
                    label: Text(
                      'Home',
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.shop_2_outlined,
                    ),
                    label: Text(
                      'Home',
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.shopping_cart,
                    ),
                    label: Text(
                      'Home',
                    ),
                  ),
                ],
              ),
              Expanded(child: _screens[selectedIndex])
            ],
          )),
    );
  }
}
