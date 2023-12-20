import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class RevenueLineChartBody extends StatelessWidget
{
  const RevenueLineChartBody({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return LineChart(
      LineChartData(
        titlesData: FlTitlesData(
          topTitles: const AxisTitles(
              axisNameSize: 20,
              axisNameWidget: Text('Revenue among months', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              sideTitles: SideTitles(
                showTitles: false,
              )
          ),

          rightTitles: const AxisTitles(
              axisNameWidget: SizedBox(),
              sideTitles: SideTitles(
                showTitles: false,
              )
          ),

          bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, __)
                {
                  String text = '';
                  switch(value.toDouble())
                  {
                    case 0:
                      text = 'Jan';
                      break;

                    case 1:
                      text = 'Feb';
                      break;

                    case 2:
                      text = 'Mar';
                      break;

                    case 3:
                      text = 'Apr';
                      break;

                    case 4:
                      text = 'May';
                      break;

                    case 5:
                      text = 'June';
                      break;

                    case 6:
                      text = 'July';
                      break;

                    case 7:
                      text = 'Aug';
                      break;

                    case 8:
                      text = 'Sep';
                      break;

                    case 9:
                      text = 'Oct';
                      break;

                    case 10:
                      text = 'Nov';
                      break;

                    case 11:
                      text = 'Dec';
                      break;
                  }

                  return Text(text, style: const TextStyle(fontWeight: FontWeight.bold, color: ConstantColors.night));
                },
              )
          ),
        ),

        borderData: FlBorderData(
            show: true,
            border: Border.all(color: ConstantColors.babyPowder, width: 2)
        ),

        gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value)
            {
              return const FlLine(
                  color: ConstantColors.night,
                  strokeWidth: 0.4
              );
            },
            getDrawingVerticalLine: (value)
            {
              return const FlLine(
                  color: ConstantColors.night,
                  strokeWidth: 0.4
              );
            }
        ),

        backgroundColor: ConstantColors.customedGrey,
        lineBarsData: [
          LineChartBarData(
            spots: const [
              FlSpot(0, 1000),
              FlSpot(1, 2000),
              FlSpot(2, 35000),
              FlSpot(3, 5000),
              FlSpot(4, 3500),
              FlSpot(5, 4000),
              FlSpot(6, 7000),
              FlSpot(7, 8000),
              FlSpot(8, 2000),
              FlSpot(9, 10000),
              FlSpot(10, 11000),
              FlSpot(11, 12000),
            ],

            isCurved: true,

            dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index)
                {
                  return FlDotCirclePainter(
                      radius: 6,
                      color: ConstantColors.babyPowder,
                      strokeColor: Colors.orange,
                      strokeWidth: 3.5
                  );
                }
            ),

            gradient: const LinearGradient(colors: [ConstantColors.customedGrey, Colors.grey, Colors.grey, ConstantColors.night]),
            barWidth: 5,
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(colors: ConstantColors.gradientColorsOfLineChart.map((e) => e.withOpacity(0.5)).toList()),
            ),
          ),
        ],
      ),

      duration: const Duration(milliseconds: 150), // Optional
      curve: Curves.linear,
    );
  }
}