import 'package:flutter/material.dart';
import 'package:flutter_hotelpage/companents/bottom.dart';
import 'package:flutter_hotelpage/companents/search.dart';

import 'companents/travelCard.dart';

class TravelApp extends StatefulWidget {
  const TravelApp({super.key});

  @override
  State<TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  List<String> urls = [
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/08/3c/d6/sheraton-bishkek.jpg?w=700&h=-1&s=1',
    'https://invest.gov.kg/wp-content/uploads/2019/07/46100971_2132957770303249_788291940956241920_o-1024x768.jpg',
    'https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2017/01/05/1128/Hyatt-Regency-New-Brunswick-P078-Exterior.jpg/Hyatt-Regency-New-Brunswick-P078-Exterior.16x9.jpg',
    'http://www.alymbaev.org/wp-content/uploads/2012/10/IMG_0879.JPG'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Kyrgyzstan',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w600),
            ),
            const Text(
              'Pick your destination',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Search(),
            const SizedBox(
              height: 30.0,
            ),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(children: [
                  const TabBar(
                    indicatorColor: Color(0xFFFE8C68),
                    unselectedLabelColor: Color(0xFF555555),
                    labelColor: Color(0xFFFE8C68),
                    labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    tabs: [
                      Tab(
                        text: 'Trending',
                      ),
                      Tab(
                        text: 'Promotions',
                      ),
                      Tab(
                        text: 'Favorites',
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 300.0,
                    child: TabBarView(children: [
                      Card(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            travelCard(urls[0], "Sheraton", "Bishkek", 5),
                            travelCard(urls[1], "Novotel", "Bishkek", 4),
                            travelCard(urls[2], "Hayat Regency", "Bishkek", 3),
                            travelCard(urls[3], "Jannat resort", "Bishkek", 3)
                          ],
                        ),
                      ),
                      Card(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            travelCard(urls[3], "Jannat resort", "Bishkek", 3),
                            travelCard(urls[2], "Hayat Regenct", "Bishkek", 4),
                            travelCard(urls[1], "Novotel", "Bishkek", 5),
                            travelCard(urls[0], "Sheraton", "Bishkek", 5)
                          ],
                        ),
                      ),
                      Card(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [],
                        ),
                      ),
                    ]),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
