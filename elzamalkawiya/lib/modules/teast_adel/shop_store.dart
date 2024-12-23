// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:udmayflutter/shared/components/components.dart';

class ShopStore extends StatefulWidget {
  const ShopStore({super.key});

  @override
  State<ShopStore> createState() => _ShopStoreState();
}

class _ShopStoreState extends State<ShopStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        titleSpacing: 20,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.format_align_left_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(
              20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  "Explore Our New Collections",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
