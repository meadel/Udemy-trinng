// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjmKkOb4Xzr51XtQstkoK5aHafs7d9moaAlCBR6CsaG2MFq3CgDKxTfK1Qw6zfGO3k0CyiEWRmPmv_orC9_Vtl-FtaWdb3Du6Zf0pJYqCvyxD4yjbKNWX_CVEg_rl8Zraxma5x6rDslnmuZe-tnjefbTPy-BlXseFfTQ1CAZQe-CyLrx7NqbtckCH9Mzg/s400/%D8%B5%D9%88%D8%B1%20%D8%A8%D8%B1%D9%88%D9%81%D8%A7%D9%8A%D9%84.jpg'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 16,
                  color: Colors.white,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Search',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildStoryItem(),
                separatorBuilder: (context, index) => SizedBox(
                  width: 20.0,
                ),
                itemCount: 15,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.0,
                ),
                itemCount: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildChatItem() => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgrrMwCaaZWUFwY88_5VxrwihZkr1Vyq86Pak5woGDP9-7tiXRa7eskMxwej5IGPFHwgME6nfN8d__X739ZSrc7EvTQ27QLoYNKSbnxtOqq0HsE1ISMTaq4Hkv9TTNheU67BLG-i9qY_txuSPXHQ4GFOyU_S6LbDbX7m0o6YNHGzqLc3DBWSeKb4YvMpQ/s936/%D8%A7%D8%AC%D9%85%D9%84-%D8%A7%D9%84%D8%B5%D9%88%D8%B1-%D8%A7%D9%84%D8%B4%D8%AE%D8%B5%D9%8A%D8%A9-%D9%84%D9%84%D9%81%D9%8A%D8%B3-%D8%A8%D9%88%D9%83-%D9%84%D9%84%D8%B1%D8%AC%D8%A7%D9%84-2021-%D8%AC%D8%AF%D9%8A%D8%AF%D8%A92.jpg'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3,
                end: 3,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'mohamed adel',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'hello my name is adel mohamed ab',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 7.0,
                      height: 7.0,
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                    ),
                  ),
                  Text(
                    '02:50 PM',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );

// ignore: sized_box_for_whitespace
Widget buildStoryItem() => Container(
      width: 60.0,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgrrMwCaaZWUFwY88_5VxrwihZkr1Vyq86Pak5woGDP9-7tiXRa7eskMxwej5IGPFHwgME6nfN8d__X739ZSrc7EvTQ27QLoYNKSbnxtOqq0HsE1ISMTaq4Hkv9TTNheU67BLG-i9qY_txuSPXHQ4GFOyU_S6LbDbX7m0o6YNHGzqLc3DBWSeKb4YvMpQ/s936/%D8%A7%D8%AC%D9%85%D9%84-%D8%A7%D9%84%D8%B5%D9%88%D8%B1-%D8%A7%D9%84%D8%B4%D8%AE%D8%B5%D9%8A%D8%A9-%D9%84%D9%84%D9%81%D9%8A%D8%B3-%D8%A8%D9%88%D9%83-%D9%84%D9%84%D8%B1%D8%AC%D8%A7%D9%84-2021-%D8%AC%D8%AF%D9%8A%D8%AF%D8%A92.jpg'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 3,
                  end: 3,
                ),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            'Mohamed Adel mohamed abdel naby ahmed',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
