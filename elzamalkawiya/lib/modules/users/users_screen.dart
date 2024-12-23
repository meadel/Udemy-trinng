// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_string_interpolations, must_be_immutable

import 'package:elzamalkawiya/models/user/user_models.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  List<UsersModel> users = [
    UsersModel(
      id: 1,
      name: 'Mohamed Adel',
      phone: '01004040123',
    ),
    UsersModel(
      id: 2,
      name: 'Adel Mohamed',
      phone: '01002277440',
    ),
    UsersModel(
      id: 4,
      name: 'Nahla Adel',
      phone: '01005005001',
    ),
    UsersModel(
      id: 1,
      name: 'Mohamed Adel',
      phone: '01004040123',
    ),
    UsersModel(
      id: 2,
      name: 'Adel Mohamed',
      phone: '01002277440',
    ),
    UsersModel(
      id: 4,
      name: 'Nahla Adel',
      phone: '01005005001',
    ),
    UsersModel(
      id: 1,
      name: 'Mohamed Adel',
      phone: '01004040123',
    ),
    UsersModel(
      id: 2,
      name: 'Adel Mohamed',
      phone: '01002277440',
    ),
    UsersModel(
      id: 4,
      name: 'Nahla Adel',
      phone: '01005005001',
    ),
    UsersModel(
      id: 1,
      name: 'Mohamed Adel',
      phone: '01004040123',
    ),
    UsersModel(
      id: 2,
      name: 'Adel Mohamed',
      phone: '01002277440',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'adel mohamed',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UsersModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
