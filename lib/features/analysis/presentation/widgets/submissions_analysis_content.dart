import 'package:flutter/material.dart';
import 'package:testing_app/features/analysis/presentation/widgets/submission_circle_data.dart';

class SubmissionsAnaysisContent extends StatelessWidget {
  const SubmissionsAnaysisContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '424K',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Submissions',
              style: TextStyle(
                color: Colors.white.withOpacity(.5),
                fontSize: 12,
                // fontWeight: FontWeight.bold,
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: SubmissionCircleData(
                  color: Colors.green,
                  title: 'Passed',
                  value: '12,000',
                  whiteSpace: 2,
                  radius: 110,
                  persent: '60%',
                ),
              ),
            ),
          ],
        ),
        const Positioned(
            bottom: 0,
            right: 25,
            child: SubmissionCircleData(
              color: Colors.red,
              title: 'Rejected',
              value: '2,000',
              whiteSpace: 16,
              radius: 85,
              persent: '10%',
            )),
        const Positioned(
            bottom: 0,
            left: 25,
            child: SubmissionCircleData(
              color: Colors.deepPurple,
              title: 'Pending',
              value: '10,000',
              whiteSpace: 16,
              radius: 90,
              persent: '30%',
            )),
      ],
    );
  }
}
