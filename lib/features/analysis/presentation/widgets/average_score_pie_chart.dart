import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AverageScorePieChart extends StatelessWidget {
  const AverageScorePieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Average Scores from 100',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            width: 280,
            height: 280,
            child: PieChart(
              swapAnimationCurve: Curves.linear,
              swapAnimationDuration: const Duration(seconds: 1),
              PieChartData(
                sectionsSpace: 1,
                startDegreeOffset: -90,
                centerSpaceRadius: 2,
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(
                    color: Colors.grey,
                    width: 10,
                    style: BorderStyle.solid,
                  ),
                ),
                sections: [
                  PieChartSectionData(
                    radius: 90,
                    title: '35%',
                    borderSide: const BorderSide(color: Colors.deepPurple),
                    badgePositionPercentageOffset: 0,
                    value: 35,
                    color: Colors.deepPurple.withOpacity(.3),
                  ),
                  PieChartSectionData(
                    radius: 80,
                    value: 25,
                    color: Colors.blue.withOpacity(.3),
                    title: '25%',
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  PieChartSectionData(
                    radius: 70,
                    value: 15,
                    color: Colors.orangeAccent.withOpacity(.3),
                    titlePositionPercentageOffset: .7,
                    title: '15%',
                    borderSide: const BorderSide(color: Colors.orangeAccent),
                  ),
                  PieChartSectionData(
                    radius: 60,
                    value: 13,
                    color: Colors.red.withOpacity(.3),
                    title: '13%',
                    titlePositionPercentageOffset: .7,
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  PieChartSectionData(
                    radius: 54,
                    value: 12,
                    color: Colors.green.withOpacity(.3),
                    title: '12%',
                    titlePositionPercentageOffset: .7,
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
