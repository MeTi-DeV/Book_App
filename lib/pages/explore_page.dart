
import 'dart:math';

import 'package:book_shop/pages/more_page.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class ExplorePage extends StatefulWidget {


  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
    late List<GDPData> _chartData;
var isMore=false;

  @override
  void initState() {
        _chartData = getChartData();
    super.initState();
  }
  Widget build(BuildContext context) {
    
    return Scaffold(
      extendBody: true,
      body:  SingleChildScrollView(
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
              height: 250,
              color: Colors.transparent,
              child: Stack(children: [
                Container(
                  margin: EdgeInsets.only(top: 22),
                  alignment: Alignment.center,
                  height: 250,
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
                                GestureDetector(
                                  onTap: ()=> Navigator.of(context).pushNamed(MorePage.routeName),
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    // color: Colors.black,
                                    height: 35,
                                    width: 40,
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                    Container(width: 4,height: 4
                                    ,decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4) ,color: Colors.white
                                    ),),
                                    Container(width: 4,height: 4
                                    ,decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4) ,color: Colors.white
                                    ),),
                                    Container(width: 4,height: 4
                                    ,decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4) ,color: Colors.white
                                    ),),
                                    ],),
                                  ),
                                )
                                // IconButton(
                                //     onPressed: ()=>Navigator.of(context).pushNamed(MorePage.routeName),
                                //     icon: Icon(
                                //       Icons.more_horiz,
                                //       size: 30,
                                //       color: Colors.white,
                                //     ))
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                ),
                                Container(
                                  width: 150,
                                  // height: 80,
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-39/360),
                                    child: SfCircularChart(
                                                                   
                                      annotations: <CircularChartAnnotation>[
                                        CircularChartAnnotation(
                                          widget: RotationTransition(
                                            turns: AlwaysStoppedAnimation(39/360),
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                '${_chartData[0].gdp}%',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 221, 0, 1),
                                                    fontSize: 17),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                      
                                      series: <CircularSeries>[
                                        
                                        DoughnutSeries<GDPData, String>(
                                          
                                            dataSource: _chartData,
                                            innerRadius: '90%',
                                            pointColorMapper: (GDPData data, _) =>
                                                data.color,
                                            xValueMapper: (GDPData data, _) =>
                                                data.continent,
                                            yValueMapper: (GDPData data, _) =>
                                                data.gdp)
                                      ],
                                    ),
                                  ),

                                  // child:
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
                      onPressed: () {
                        setState(() {
                          isMore=!isMore;
                        });
                      },
                      icon: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color.fromRGBO(48, 95, 114, 1),
                        ),
                        child:isMore?Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 30,
                          color: Colors.white,
                        ): Icon(
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
      ),);
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