// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:elzamalkawiya/shared/components/components.dart';
import 'package:flutter/material.dart';

class SocialScreen extends StatefulWidget {
  const SocialScreen({super.key});

  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage(
                      'assets/images/Zizo.jpg',
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'James Adams',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        '@james_adams',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  Icon(
                    Icons.search,
                    size: 37.0,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Stack(
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 37.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          radius: 6.9,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Color.fromARGB(255, 199, 198, 198),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Stack(
                children: [
                  Container(
                    height: 150,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildStoryItemTest(),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 20.0,
                      ),
                      itemCount: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        'Photo',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18.0,
                        ),
                      ),
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Container(
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        'Video',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                        ),
                      ),
                      icon: Icon(
                        Icons.videocam,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: Color.fromARGB(178, 207, 13, 214),
                          ),
                          CircleAvatar(
                            radius: 27,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 23,
                            backgroundImage: AssetImage(
                              'assets/images/Zizo.jpg',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        children: [
                          Text(
                            'Ehab Abo EL-Yazed',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                          Row(
                            // dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
                            children: [
                              Icon(
                                Icons.public,
                                size: 17,
                                color: Colors.grey[400],
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Text(
                                '2 hours ago            ',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 110.0,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'I have just spent 3 amazing days in my home town! 🤣',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  12.0,
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(20)),
                  child: Container(
                    color: Colors.blue,
                    width: double.infinity,
                    height: 230,
                    child: Image.asset(
                      'assets/images/test1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 18.0,
                  left: 18.0,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage(
                        'assets/images/Zizo.jpg',
                      ),
                    ),
                    CircleAvatar(
                      radius: 12.0,
                      backgroundImage: AssetImage(
                        'assets/images/Zizo.jpg',
                      ),
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage(
                        'assets/images/Zizo.jpg',
                      ),
                    ),
                    SizedBox(
                      width: 210.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.redo,
                        color: Color.fromARGB(255, 98, 10, 212),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 18.0,
                  left: 18.0,
                  top: 2.0,
                  bottom: 2.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Liked by',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      'mohamed_adel and 155',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      'Others',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                  right: 18.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Tag someone you take here if❤️Buon giocno❤️ FOLLOW',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                  right: 18.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'View all 20 comments',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                  right: 18.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Rafat_rafat',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      'Very nice',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
