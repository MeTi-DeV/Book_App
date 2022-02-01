import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
static const routeName='/details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 249, 254, 1),
      body: Column(
        children: [
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
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
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
                                    color: Color.fromRGBO(255, 221, 0, 1),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Color.fromRGBO(255, 221, 0, 1),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Color.fromRGBO(255, 221, 0, 1),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Color.fromRGBO(255, 221, 0, 1),
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
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Color.fromRGBO(227, 89, 89, 1),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
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
                                onPressed: () {},
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
                      child: Image.asset('assets/images/forward_icon.png')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
