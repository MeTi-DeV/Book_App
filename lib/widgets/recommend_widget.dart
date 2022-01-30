import 'dart:math';
// import 'package:book_shop/providers/book.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class RecommendWidget extends StatefulWidget {
  final String title;
  final String writer;
  final int rating;
  final String image;
  final int readed;
  RecommendWidget({
    required this.title,
    required this.writer,
    required this.rating,
    required this.image,
    required this.readed,
  });
  @override
  State<RecommendWidget> createState() => _RecommendWidgetState();
}

class _RecommendWidgetState extends State<RecommendWidget> {
  @override
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 360,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('${widget.image}'),
          Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 widget.title,
                  style: TextStyle(
                      color: Color.fromRGBO(48, 95, 114, 1),
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Container(
                  child: Text(
                   widget.writer,
                    style: TextStyle(
                        color: Color.fromRGBO(79, 157, 188, 1),
                        fontFamily: 'SegoeUI',
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
                Row(
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
                      color: Color.fromRGBO(255, 221, 0, 1),
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
              turns: AlwaysStoppedAnimation(-39 / 360),
              child: SfCircularChart(
                annotations: <CircularChartAnnotation>[
                  CircularChartAnnotation(
                    widget: RotationTransition(
                      turns: AlwaysStoppedAnimation(39 / 360),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          '${widget.readed} %',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 221, 0, 1),
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ],
                series: <CircularSeries>[
                  DoughnutSeries<GDPData, String>(
                      dataSource: getChartData(),
                      innerRadius: '90%',
                      pointColorMapper: (GDPData data, _) => data.color,
                      xValueMapper: (GDPData data, _) => data.continent,
                      yValueMapper: (GDPData data, _) => data.gdp)
                ],
              ),
            ),

            // child:
          )
        ],
      ),
    );
  }

  List<GDPData> getChartData() {
    List<GDPData> chartData = [
      GDPData('65 %', widget.readed, Color.fromRGBO(255, 221, 0, 1)),
      GDPData('Not Read Yet', 100-widget.readed, Color.fromRGBO(79, 157, 188, 1)),
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
