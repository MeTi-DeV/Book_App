import 'package:book_shop/pages/more_page.dart';
import 'package:book_shop/providers/book.dart';
import 'package:book_shop/widgets/recommend_widget.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class TabWidget extends StatefulWidget {
  TabWidget({required this.controller, required this.panelController});
  final ScrollController controller;
  final PanelController panelController;
  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  final List<Book> items = [
    Book(
        title: 'The Fatal Tree',
        writer: 'by Jake Arnott',
        rating: 4,
        image: 'assets/images/trends/The_Fatal_Tree.png',
        readed: 65),
    Book(
        title: 'Day Four',
        writer: 'by LOTZ, SARAH',
        rating: 4,
        image: 'assets/images/trends/Day_Four.png',
        readed: 25),
    Book(
        title: 'Door to Door',
        writer: 'by Edward Humes',
        rating: 4,
        image: 'assets/images/trends/D2D.png',
        readed: 40),
    Book(
        title: 'Star Trek',
        writer: 'by Edward Humes',
        rating: 4,
        image: 'assets/images/trends/Graphic_Novels.png',
        readed: 31),
  ];

  late List<GDPData> _chartData;
  var isExpend = false;
  var isMore = false;
  // void initState() {
  //   // _chartData = getChartData();
  //   super.initState();
  // }

  void panelToggler() {
    (widget.panelController.isPanelOpen || isExpend)
        ? widget.panelController.close()
        : widget.panelController.open();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          IconButton(
              onPressed: () {
                panelToggler();
                setState(() {
                  isExpend = !isExpend;
                });
              },
              icon: isExpend || widget.panelController.isPanelOpen
                  ? Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 40,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 40,
                      color: Colors.white,
                    )),
          Container(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 90),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset('assets/images/Blob2home.png'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 90),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Image.asset('assets/images/Blob3home.png'),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 0, bottom: 0),
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
                                  onTap: () => Navigator.of(context)
                                      .pushNamed(MorePage.routeName),
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    // color: Colors.black,
                                    height: 30,
                                    width: 40,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color: Colors.white),
                                        ),
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color: Colors.white),
                                        ),
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                         Container(
                            height: 380,
                            child: ListView.builder(
                              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05 ,bottom: MediaQuery.of(context).size.height*0.1),
                              controller: widget.controller,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return RecommendWidget(
                                    title: items[index].title,
                                    writer: items[index].writer,
                                    rating: items[index].rating,
                                    image: items[index].image,
                                    readed: items[index].readed);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
