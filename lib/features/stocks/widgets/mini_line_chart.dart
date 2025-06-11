import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MiniLineChart extends StatelessWidget {
  final List<double> data;
  final Color lineColor;

  const MiniLineChart({
    required this.data,
    required this.lineColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 90,
      child: SfCartesianChart(
        margin: EdgeInsets.zero,
        plotAreaBorderWidth: 0,
        primaryXAxis: NumericAxis(isVisible: false),
        primaryYAxis: NumericAxis(
          isVisible: false,
          minimum: data.reduce((a, b) => a < b ? a : b) - 5,
          maximum: data.reduce((a, b) => a > b ? a : b) + 5,
          axisLine: AxisLine(width: 0),
          majorGridLines: MajorGridLines(width: 0),
          plotBands: <PlotBand>[
            PlotBand(
              start: (data.first + data.last) / 2,
              end: (data.first + data.last) / 2,
              borderWidth: 1,
              borderColor: Colors.grey,
              dashArray: <double>[4, 4],
            ),
          ],
        ),
        series: <LineSeries<double, int>>[
          LineSeries<double, int>(
            dataSource: data,
            xValueMapper: (_, index) => index,
            yValueMapper: (value, _) => value,
            color: lineColor,
            width: 1.5,
          )
        ],
      ),
    );
  }
}
