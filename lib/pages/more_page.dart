import 'package:book_shop/pages/detail_screen.dart';
import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  static const routeName = '/more-book';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      backgroundColor: Color.fromRGBO(234, 249, 254, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Stack(
                children: [
                  Align(
                    child: Image.asset('assets/images/Blob_1_more.png'),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 140),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 20, left: 16),
                            child: Text(
                              'Top E-Book Reading',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(48, 95, 114, 1),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/trends/Day_Four.png',
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Day Four',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                            48,
                                            95,
                                            114,
                                            1,
                                          ),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Raleway'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'by Lotz, Sarah',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                            79,
                                            157,
                                            188,
                                            1,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'SegoeUI'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Row(
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
                                            color: Colors.grey,
                                            size: 15,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '\$ ${20.00.toStringAsFixed(2)}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'SegoeUI'),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 136,
                                      height: 47,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                            Color.fromRGBO(227, 89, 89, 1),
                                          ),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Detail',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontFamily: 'SegoeUI',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () =>Navigator.of(context).pushNamed(DetailScreen.routeName)
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    child: Image.asset('assets/images/Blob_3_more.png'),
                    alignment: Alignment.topRight,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 60, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white.withOpacity(0.8)),
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: Color.fromRGBO(48, 95, 114, 1),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'More Book',
                            style: TextStyle(
                                color: Color.fromRGBO(48, 95, 114, 1),
                                fontFamily: 'Raleway',
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white.withOpacity(0.8)),
                              child: Image.asset(
                                  'assets/images/forward_icon.png')),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Stack(
                children: [
                  Align(
                    child: Image.asset('assets/images/Blob_2_more.png'),
                    alignment: Alignment.bottomRight,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'More Recomended',
                                  style: TextStyle(
                                      color: Color.fromRGBO(48, 95, 114, 1),
                                      fontSize: 18,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child:GestureDetector(
                                  onTap: () => Navigator.of(context)
                                      .pushNamed(MorePage.routeName),
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    // color: Colors.black,
                                    height: 35,
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
                                               color: Color.fromRGBO(48, 95, 114, 1),
                                              ),
                                        ),
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color: Color.fromRGBO(48, 95, 114, 1),
                                              ),
                                        ),
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                             color: Color.fromRGBO(48, 95, 114, 1),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.35,
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
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
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
                                                  alignment:
                                                      Alignment.centerLeft,
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
                                                  padding:
                                                      EdgeInsets.only(top: 8),
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    'The Fatal Tree',
                                                    style: TextStyle(
                                                      fontFamily: 'Raleway',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: GestureDetector(
                                                      onTap: () {},
                                                      child: Text(
                                                        'by Jake Arnott',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    79,
                                                                    157,
                                                                    188,
                                                                    1),
                                                            fontFamily:
                                                                'SegoeUI',
                                                            fontSize: 14),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.only(top: 8),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      'The Fatal Tree',
                                                      style: TextStyle(
                                                        fontFamily: 'Raleway',
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
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
                                                  alignment:
                                                      Alignment.centerLeft,
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  padding:
                                                      EdgeInsets.only(top: 8),
                                                  child: Text(
                                                    'The Fatal Tree',
                                                    style: TextStyle(
                                                      fontFamily: 'Raleway',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
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
                                                  alignment:
                                                      Alignment.centerLeft,
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  padding:
                                                      EdgeInsets.only(top: 8),
                                                  child: Text(
                                                    'The Fatal Tree',
                                                    style: TextStyle(
                                                      fontFamily: 'Raleway',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
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
            )
          ],
        ),
      ),
    );
  }
}
