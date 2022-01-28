import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset('assets/images/Icon feather-menu.png'),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          Image.asset(
              'assets/images/medium-shot-woman-with-glasses-outdoors.png')
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: Container(
          height: 84,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.explore,
                    color: Color.fromRGBO(48, 95, 114, 1),
                    size: 35,
                  ),
                  title: Text(
                    'Explore',
                    style: TextStyle(
                      fontFamily: 'SegoeUI',
                      fontSize: 12,
                      color: Color.fromRGBO(79, 157, 188, 1),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu_book_rounded,
                    color: Color.fromRGBO(48, 95, 114, 1),
                    size: 35,
                  ),
                  title: Text(
                    'Reading',
                    style: TextStyle(
                      fontFamily: 'SegoeUI',
                      fontSize: 12,
                      color: Color.fromRGBO(79, 157, 188, 1),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bookmark_outlined,
                    color: Color.fromRGBO(48, 95, 114, 1),
                    size: 35,
                  ),
                  title: Text(
                    'Bookmark',
                    style: TextStyle(
                      fontFamily: 'SegoeUI',
                      fontSize: 12,
                      color: Color.fromRGBO(79, 157, 188, 1),
                    ),
                  ),
                ),
              ],
            ),
          )),
      backgroundColor: Color.fromRGBO(234, 249, 254, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    child: Image.asset('assets/images/Blob1home.png'),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Image.asset('assets/images/Blob4home.png'),
                  ),
                ),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(top: 130),
                    width: 360,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        alignLabelWithHint: false,
                        hintStyle:
                            TextStyle(fontFamily: 'Raleway', fontSize: 15),
                        hintText: 'Search books here...',
                        suffixIcon: Icon(
                          Icons.search,
                          size: 25,
                          color: Color.fromRGBO(48, 95, 114, 1),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Categories',
                  style: TextStyle(
                      color: Color.fromRGBO(48, 95, 114, 1),
                      fontSize: 24,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, bottom: 60),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: Row(children: [
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 100,
                            margin: EdgeInsets.only(left: 16, right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(48, 95, 114, 1),
                            ),
                            child: Text(
                              'Comics',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 100,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(203, 229, 243, 1),
                            ),
                            child: Text(
                              'Recipe',
                              style: TextStyle(
                                  color: Color.fromRGBO(48, 95, 114, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 100,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(203, 229, 243, 1),
                            ),
                            child: Text(
                              'Novel',
                              style: TextStyle(
                                  color: Color.fromRGBO(48, 95, 114, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 100,
                            margin: EdgeInsets.only(right: 16, left: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(203, 229, 243, 1),
                            ),
                            child: Text(
                              'Biography',
                              style: TextStyle(
                                  color: Color.fromRGBO(48, 95, 114, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Trending Books',
                  style: TextStyle(
                      color: Color.fromRGBO(48, 95, 114, 1),
                      fontSize: 24,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: SizedBox(
                width: double.infinity,
                height: 235,
                child: Row(children: [
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: 235,
                            width: 120,
                            margin: EdgeInsets.only(left: 16, right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Color.fromRGBO(48, 95, 114, 1),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/images/trends/The Fatal_Tree.png',
                                    fit: BoxFit.cover,
                                    height: 180,
                                    width: 120,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'by Jake Arnott',
                                    style: TextStyle(
                                        color: Color.fromRGBO(79, 157, 188, 1),
                                        fontFamily: 'SegoeUI',
                                        fontSize: 14),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'The Fatal Tree',
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(48, 95, 114, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: 235,
                            width: 120,
                            margin: EdgeInsets.only(left: 16, right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Color.fromRGBO(48, 95, 114, 1),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/images/trends/Day_Four.png',
                                    fit: BoxFit.cover,
                                    height: 180,
                                    width: 120,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'by LOTZ, SARAH',
                                    style: TextStyle(
                                        color: Color.fromRGBO(79, 157, 188, 1),
                                        fontFamily: 'SegoeUI',
                                        fontSize: 14),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Day Four',
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(48, 95, 114, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: 235,
                            width: 120,
                            margin: EdgeInsets.only(left: 16, right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Color.fromRGBO(48, 95, 114, 1),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/images/trends/D2D.png',
                                    fit: BoxFit.cover,
                                    height: 175,
                                    width: 120,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'by Edward Humes',
                                    style: TextStyle(
                                        color: Color.fromRGBO(79, 157, 188, 1),
                                        fontFamily: 'SegoeUI',
                                        fontSize: 14),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Door to Door',
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(48, 95, 114, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: 235,
                            width: 120,
                            margin: EdgeInsets.only(left: 16, right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Color.fromRGBO(48, 95, 114, 1),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/images/trends/Graphic_Novels.png',
                                    fit: BoxFit.cover,
                                    height: 180,
                                    width: 120,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'by Edward Humes',
                                    style: TextStyle(
                                        color: Color.fromRGBO(79, 157, 188, 1),
                                        fontFamily: 'SegoeUI',
                                        fontSize: 14),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Star Trek',
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(48, 95, 114, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              height: 266,
              color: Colors.transparent,
              child: Stack(children: [
                Container(
                  margin: EdgeInsets.only(top:20),
                  alignment: Alignment.center,
                  height: 266,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(79, 157, 188, 1),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                    // ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset('assets/images/Blob2home.png'),
                        ),
                      ),
                      Container(
                         margin: EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Image.asset('assets/images/Blob3home.png'),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'More Recomended',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Raleway',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.more_horiz,
                                      size: 30,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            width: 331,
                            height: 101,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/images/trends/1.png'),
                                Padding(
                                  padding: const EdgeInsets.only(top: 13),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'The Fatal Tree',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(48, 95, 114, 1),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Container(
                                        child: Text(
                                          'by Jake Arnott',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  79, 157, 188, 1),
                                              fontFamily: 'SegoeUI',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_rate_rounded,
                                            color:
                                                Color.fromRGBO(255, 221, 0, 1),
                                            size: 15,
                                          ),
                                          Icon(
                                            Icons.star_rate_rounded,
                                            color:
                                                Color.fromRGBO(255, 221, 0, 1),
                                            size: 15,
                                          ),
                                          Icon(
                                            Icons.star_rate_rounded,
                                            color:
                                                Color.fromRGBO(255, 221, 0, 1),
                                            size: 15,
                                          ),
                                          Icon(
                                            Icons.star_rate_rounded,
                                            color:
                                                Color.fromRGBO(255, 221, 0, 1),
                                            size: 15,
                                          ),
                                          Icon(
                                            Icons.star_rate_rounded,
                                            color:
                                                Color.fromRGBO(255, 221, 0, 1),
                                            size: 15,
                                          ),
                                          Icon(
                                            Icons.star_rate_rounded,
                                            color:
                                                Colors.grey,
                                            size: 15,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: IconButton(
                      onPressed: () {},
                      icon: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color.fromRGBO(48, 95, 114, 1),
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_up_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
