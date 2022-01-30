import 'package:book_shop/pages/bookmark_page.dart';
import 'package:book_shop/pages/explore_page.dart';
import 'package:book_shop/pages/reading_page.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  final screens = [
    ExplorePage(),
    ReadingPage(),
    BookmarkPage(),
  ];
  @override
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        backgroundColor: Color.fromRGBO(234, 249, 254, 1),
        extendBodyBehindAppBar: true,
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            backgroundColor: Colors.white,
            indicatorColor: Colors.transparent,
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(
                  fontSize: 12,
                  fontFamily: 'SegeoUI',
                  color: Color.fromRGBO(79, 157, 188, 1)),
            ),
          ),
          child: Container(
            height: 84,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15), topLeft: Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: NavigationBar(
                  selectedIndex: index,
                  onDestinationSelected: (index) => setState(() {
                    this.index = index;
                  }),
                  destinations: [
                    NavigationDestination(
                        icon: Icon(
                          Icons.explore,
                          color: Color.fromRGBO(48, 95, 114, 1),
                          size: 35,
                        ),
                        label: 'Explore'),
                    NavigationDestination(
                        icon: Icon(
                          Icons.menu_book_rounded,
                          color: Color.fromRGBO(48, 95, 114, 1),
                          size: 35,
                        ),
                        label: 'Reading'),
                    NavigationDestination(
                        icon: Icon(
                          Icons.bookmark_outlined,
                          color: Color.fromRGBO(48, 95, 114, 1),
                          size: 35,
                        ),
                        label: 'Bookmark'),
                  ],
                )),
          ),
        ),
        body: Container(padding: EdgeInsets.only(bottom: 70),
          child: screens[index]));
  }
}
