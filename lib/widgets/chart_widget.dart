// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// class ChartWidget extends StatefulWidget {
//   final int rate;
//   ChartWidget(this.rate);
//   @override
//   State<ChartWidget> createState() => _ChartWidgetState();
// }
// 
// class _ChartWidgetState extends State<ChartWidget> {
// 
// void initState() {
//   
//      getChartData(widget.rate);
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//    return Container(
//             width: 150,
//             // height: 80,
//             child: RotationTransition(
//               turns: AlwaysStoppedAnimation(-39 / 360),
//               child: SfCircularChart(
//                 annotations: <CircularChartAnnotation>[
//                   CircularChartAnnotation(
//                     widget: RotationTransition(
//                       turns: AlwaysStoppedAnimation(39 / 360),
//                       child: Container(
//                         alignment: Alignment.center,
//                         child: Text(
//                           '',
//                           style: TextStyle(
//                               color: Color.fromRGBO(255, 221, 0, 1),
//                               fontSize: 17),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//                 series: <CircularSeries>[
//                   DoughnutSeries<GDPData, String>(
//                       dataSource:getChartData(widget.rate)  ,
//                       innerRadius: '90%',
//                       pointColorMapper: (GDPData data, _) => data.color,
//                       xValueMapper: (GDPData data, _) => data.continent,
//                       yValueMapper: (GDPData data, _) => data.gdp)
//                 ],
//               ),
//             ),
// 
//             // child:
//           );
//   }
//    
// }
