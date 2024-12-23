import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text('adel'),
        actions: [
          const IconButton(
            icon: Icon(Icons.abc),
            onPressed: ontap,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notification_add_outlined,
            ),
          ),
          IconButton(onPressed: () {}, icon: const Text('Zamalek'))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const Image(
                    width: 200,
                    image: NetworkImage(
                      'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt4563e1e8f67b4ef7/60dbb1b65e51ad3b1d2727ae/24dec10a38ac3f3e9f2589d57e5cad777e16d801.jpg?auto=webp&format=pjpg&width=640&quality=60',
                    ),
                  ),
                  Container(
                    color: Colors.red.withOpacity(.5),
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: const Text(
                      'ZamalekFans',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

void ontap() {
  print('adel');
}
