import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '/screens/constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
          height: 200,
          child: PieChart(
            PieChartData(
              centerSpaceRadius: 70,
              sectionsSpace: 0,
              sections: PaiChartSectionData,
            ),
          ),
        ),
        Positioned.fill(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //SizedBox(height: defaultPadding),
            Text(
              "29.1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "of 128gb",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w300),
            ),
          ]),
        ),
      ],
    );
  }
}

List<PieChartSectionData> PaiChartSectionData = [
  PieChartSectionData(
    value: 15,
    radius: 22,
    color: Colors.cyan,
    showTitle: false,
  ),
  PieChartSectionData(
    value: 10,
    radius: 19,
    color: Colors.yellow,
    showTitle: false,
  ),
  PieChartSectionData(
    value: 11,
    radius: 16.5,
    color: Colors.red,
    showTitle: false,
  ),
  PieChartSectionData(
      value: 15,
      radius: 15,
      color: primaryColor.withOpacity(0.1),
      showTitle: false),
  PieChartSectionData(
    value: 18,
    radius: 23,
    color: Colors.blue,
    showTitle: false,
  )
];
