
import 'package:flutter/material.dart';

class stratupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 249, 254, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  child: Container(
                    color: Color.fromRGBO(79, 157, 188, 1),
                    height: 320,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Image.asset('assets/images/Blob 1.png'),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    child: Image.asset('assets/images/Blob 2.png'),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/female_student.png',
                          height: 469,
                          width: 397,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(234, 249, 254, 1),
                                    spreadRadius: 50,
                                    blurRadius: 60,
                                    offset: Offset(0, 0),
                                  )
                                ]),
                                margin: EdgeInsets.only(top: 380),
                                child: Text(
                                  'Reading Is \nFascinating',
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 48,
                                      color: Color.fromRGBO(48, 95, 114, 1),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Text(
                                'World best writers, works and write entertaining literature for you',
                                style: TextStyle(
                                  fontFamily: 'SegoeUI',
                                  fontSize: 15,
                                  color: Color.fromRGBO(79, 157, 188, 1),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              child: Container(
                margin: EdgeInsets.only(top: 40),
                child: Center(
                    child: Column(
                  children: [
                    Text(
                      'Let\s start',
                      style: TextStyle(
                          fontFamily: 'SegoeUI',
                          color: Color.fromRGBO(48, 95, 114, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    Center(
                      child: Container(
                          margin: EdgeInsets.only(top: 15, left: 15),
                          // margin: EdgeInsets.only(top: 20),
                          // decoration: BoxDecoration(
                          //     color: Color.fromRGBO(48, 95, 114, 1),
                          //     borderRadius:
                          //         BorderRadius.all(Radius.circular(50))),
                          height: 115,
                          width: 115,
                          child: IconButton(
                            padding: EdgeInsets.all(20),
                              onPressed: () => Navigator.of(context)
                                  .pushReplacementNamed('/home-screen'),
                              icon: Image.asset(
                                  'assets/images/start_up_icon.png'))),
                    ),
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
