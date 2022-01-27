import 'package:flutter/material.dart';

class stratupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 249, 254, 1),
      body: Column(
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
                  child: Stack(children: [
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
                          )
                        ],
                      ),
                    )
                  ]),
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
                    child: Stack(children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )
                          ,
                          border: Border(top:BorderSide(color:Color.fromRGBO(48, 95, 114, 1) ,width: 3 ),right:BorderSide(color:Color.fromRGBO(48, 95, 114, 1) ,width: 3 ) )
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 15, left: 15),
                          // margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(48, 95, 114, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          height: 60,
                          width: 60,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                                size: 40,
                                color: Colors.white,
                              ))),
                    ]),
                  ),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }
}
