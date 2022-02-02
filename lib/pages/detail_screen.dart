import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static const routeName = '/details';

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

int initialQTY = 1;

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 249, 254, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset('assets/images/Blob_1_details.png'),
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
                            'Detail Book',
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
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.2),
                    child: Align(
                      child: Image.asset(
                        'assets/images/trends/Day_Four.png',
                        width: MediaQuery.of(context).size.width * 0.45,
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height * 0.55,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                color: Color.fromRGBO(79, 157, 188, 1),
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/images/Blob_2_details.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$${20.00.toStringAsFixed(2)}',
                                  style: TextStyle(
                                      fontFamily: 'SegoeUI',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: Color.fromRGBO(225, 221, 0, 1)),
                                ),
                                Text(
                                  'Day Four',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'Raleway'),
                                ),
                                Text(
                                  'Lotz, Sarah',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'SegoeUI',
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(48, 95, 114, 1),
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)),
                                width: 47,
                                height: 47,
                                child: Icon(
                                  Icons.bookmark_rounded,
                                  color: Color.fromRGBO(48, 95, 114, 1),
                                  size: 23.5,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.18,
                        horizontal: MediaQuery.of(context).size.height * 0.030),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.88,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(87, 186, 225, 1),
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'Rating',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Raleway'),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Colors.amber,
                                    size: 15,
                                  ),
                                  Text(
                                    ' 4.1',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'SegoeUI',
                                        color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'Number of pages',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Raleway'),
                            ),
                            Text(
                              '120 Pages',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'SegoeUI',
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Languages',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Raleway'),
                            ),
                            Text(
                              'ENG',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'SegoeUI',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.3),
                    child: Text(
                      'The Book Grocer online offers a broad and ever increasing range of discounted remainder and secondhand books.',
                      style: TextStyle(
                          fontFamily: 'SegoeUI',
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.3),
                    child: Text(
                      'The Book Grocer online offers a broad and ever increasing range of discounted remainder and secondhand books.',
                      style: TextStyle(
                          fontFamily: 'SegoeUI',
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.34,
                          height: MediaQuery.of(context).size.width * 0.112,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(48, 95, 114, 1),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              child: Text(
                                'Add to cart',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'SegoeUI',
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(DetailScreen.routeName)),
                        ),
                        // Container(
                        //   decoration: BoxDecoration(color: Colors.white),
                        //   width: 102,
                        //   height: 54,
                        //   child:
                        //   Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Container(
                        //         width: 23,
                        //         height: 54,
                        //         color: Colors.black,
                        //         child: Text('+'),
                        //       ),
                        //       Container(child: TextField(),),
                        //       Container(
                        //         width: 23,
                        //         height: 54,
                        //         color: Colors.black,
                        //         child: Text('+'),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          width: 102,
                          height: 54,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: ()=>setState(() {
                                   initialQTY++;
                                }),
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                  color: Color.fromRGBO(234, 249, 254, 1),
                                  ),
                                  height: 54,
                                  width: 23,
                                  
                                  child: Text('+', textAlign: TextAlign.center,),
                                ),
                              ),
                              Container(
                                width: 56,
                                child: Text(
                                  '${initialQTY}',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              GestureDetector(
                                onTap: ()=>setState(() {
                              initialQTY--;
                                }),
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    color: Color.fromRGBO(234, 249, 254, 1),
                                  ),
                                  height: 54,
                                  width: 23,
                                  child: Text('-' ,
                                  textAlign: TextAlign.center,
                                 ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
