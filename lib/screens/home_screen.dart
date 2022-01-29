import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<GDPData> _chartData;
  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 249, 254, 1),
      extendBodyBehindAppBar: true,
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
                      label: 'Explore'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.menu_book_rounded,
                        color: Color.fromRGBO(48, 95, 114, 1),
                        size: 35,
                      ),
                      label: 'Reading'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.bookmark_outlined,
                        color: Color.fromRGBO(48, 95, 114, 1),
                        size: 35,
                      ),
                      label: 'Bookmark')
                ],
                selectedLabelStyle: TextStyle(fontSize: 12),
                selectedItemColor: Color.fromRGBO(79, 157, 188, 1),
                unselectedLabelStyle: TextStyle(fontSize: 12),
                unselectedItemColor: Color.fromRGBO(79, 157, 188, 1))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //
              height: 180,
              child: Stack(
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
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Image.asset(
                              'assets/images/Icon feather-menu.png'),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          tooltip: MaterialLocalizations.of(context)
                              .openAppDrawerTooltip,
                        ),
                        Image.asset(
                            'assets/images/medium-shot-woman-with-glasses-outdoors.png')
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(top: 20, bottom: 24),
                      width: 340,
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
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              child: Row(children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ListView(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 100,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(48, 95, 114, 1)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            child: Text(
                              'Comics',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: 100,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(203, 229, 243, 1),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            child: Text(
                              'Recipe',
                              style: TextStyle(
                                  color: Color.fromRGBO(48, 95, 114, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: 100,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(203, 229, 243, 1),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            child: Text(
                              'Novel',
                              style: TextStyle(
                                  color: Color.fromRGBO(48, 95, 114, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: 100,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(203, 229, 243, 1),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            child: Text(
                              'Biography',
                              style: TextStyle(
                                  color: Color.fromRGBO(48, 95, 114, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
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
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: SizedBox(
                width: double.infinity,
                height: 235,
                child: Row(children: [
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 235,
                            width: 140,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Image.asset(
                                      'assets/images/trends/The_Fatal_Tree.png',
                                      fit: BoxFit.cover,
                                      height: 180,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            'by Jake Arnott',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    79, 157, 188, 1),
                                                fontFamily: 'SegoeUI',
                                                fontSize: 14),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 8),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'The Fatal Tree',
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(48, 95, 114, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 235,
                            width: 140,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Image.asset(
                                      'assets/images/trends/Day_Four.png',
                                      fit: BoxFit.cover,
                                      height: 180,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            'by Jake Arnott',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    79, 157, 188, 1),
                                                fontFamily: 'SegoeUI',
                                                fontSize: 14),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 8),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'The Fatal Tree',
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(48, 95, 114, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 235,
                            width: 140,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Image.asset(
                                      'assets/images/trends/D2D.png',
                                      fit: BoxFit.cover,
                                      height: 180,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            'by Jake Arnott',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    79, 157, 188, 1),
                                                fontFamily: 'SegoeUI',
                                                fontSize: 14),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(top: 8),
                                        child: Text(
                                          'The Fatal Tree',
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(48, 95, 114, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 235,
                            width: 140,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Image.asset(
                                      'assets/images/trends/Graphic_Novels.png',
                                      fit: BoxFit.cover,
                                      height: 180,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            'by Jake Arnott',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    79, 157, 188, 1),
                                                fontFamily: 'SegoeUI',
                                                fontSize: 14),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(top: 8),
                                        child: Text(
                                          'The Fatal Tree',
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(48, 95, 114, 1),
                                          ),
                                        ),
                                      ),
                                    ],
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
                  margin: EdgeInsets.only(top: 22),
                  alignment: Alignment.center,
                  height: 266,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(79, 157, 188, 1),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
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
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 30, bottom: 10),
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
                            width: 360,
                            height: 100,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            color: Colors.grey,
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
            Container(
              width: 150,
              height: 80,
              child: SfCircularChart(
                series: <CircularSeries>[
                  DoughnutSeries<GDPData, String>(
                      radius: '100%',
                      dataSource: _chartData,
              
                      pointColorMapper: (GDPData data, _) => data.color,
                      xValueMapper: (GDPData data, _) => data.continent,
                      yValueMapper: (GDPData data, _) => data.gdp)
                ],
              ),

              // child:
            )
          ],
        ),
      ),
    );
  }

  List<GDPData> getChartData() {
    List<GDPData> chartData = [
      GDPData('65 %', 65, Color.fromRGBO(255, 221, 0, 1)),
      GDPData('Not Read Yet', 35, Color.fromRGBO(79, 157, 188, 1)),
    ];
    return chartData;
  }
}

class GDPData {
  final int gdp;
  final String continent;
  final Color color;
  GDPData(this.continent, this.gdp, this.color);
}
