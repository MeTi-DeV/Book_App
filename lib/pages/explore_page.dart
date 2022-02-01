import 'package:book_shop/widgets/tap_widget.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ExplorePage extends StatefulWidget {
  
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

final panelController= PanelController();
class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 249, 254, 1),
      // extendBody: true,
      body: SlidingUpPanel(

        controller:panelController,
        borderRadius: BorderRadius.circular(25),
          color: Color.fromRGBO(79, 157, 188, 1),
        parallaxEnabled: true,
        parallaxOffset: 0.2,
        maxHeight: MediaQuery.of(context).size.height*0.6,
        minHeight:MediaQuery.of(context).size.height*0.42,
        panelBuilder: (controller) =>
            TabWidget(controller: controller,panelController:panelController),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                
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
                padding: const EdgeInsets.only(top: 20, bottom:320),
                child: Column(
                  children: [
                    //START TRENDING SECTION
                    SizedBox(
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
                                                  color: Color.fromRGBO(
                                                      48, 95, 114, 1),
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
                                  child: Container(
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
                                                    color: Color.fromRGBO(
                                                        48, 95, 114, 1),
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
                                                  color: Color.fromRGBO(
                                                      48, 95, 114, 1),
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
                                                  color: Color.fromRGBO(
                                                      48, 95, 114, 1),
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
                  ],
                ),
              ),
            ],
          ),
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
