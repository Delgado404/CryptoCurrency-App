import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color.fromRGBO(252, 107, 18, 1),
    const Color.fromRGBO(240, 161, 80, 1),
  ];

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          titlesData: FlTitlesData(
              bottomTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (context, value) =>
                      const TextStyle(fontSize: 10),
                  getTitles: (value) {
                    switch (value.toInt()) {
                      case 0:
                        return '00:00';
                      case 3:
                        return '03:00';
                      case 6:
                        return '06:00';
                      case 9:
                        return '09:00';
                      case 11:
                        return '11:00';
                    }
                    return '';
                  }),
              leftTitles: SideTitles(showTitles: false),
              rightTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (context, value) =>
                      const TextStyle(fontSize: 10),
                  getTitles: (value) {
                    switch (value.toInt()) {
                      case 1:
                        return '50';
                      case 2:
                        return '55';
                      case 3:
                        return '60';
                      case 4:
                        return '65';
                      case 5:
                        return '70';
                    }
                    return '';
                  }),
              topTitles: SideTitles(showTitles: false)),
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 6,
          gridData: FlGridData(
            show: false,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
            drawVerticalLine: false,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(2.6, 2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 2.5),
                FlSpot(8, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
              ],
              isCurved: false,
              colors: gradientColors,
              barWidth: 3,
              // dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors
                    .map((color) => color.withOpacity(0.3))
                    .toList(),
              ),
            ),
          ],
        ),
      );
}
