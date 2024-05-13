import 'package:flutter/material.dart';

class SubmissionCircleData extends StatelessWidget {
  final Color color;
  final String title;
  final String value;
  final double whiteSpace;
  final double radius;
  final String persent;
  const SubmissionCircleData({
    super.key,
    required this.color,
    required this.title,
    required this.value,
    required this.whiteSpace,
    required this.radius,
    required this.persent,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: radius,
          width: radius,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color.withOpacity(.3),
            border: Border.all(
              color: color,
              width: 1,
            ),
            shape: BoxShape.circle,
          ),
          child: Text(
            persent,
            style: TextStyle(
                color: color, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 30,
          width: 2,
          color: Colors.white.withOpacity(.5),
        ),
        SizedBox(
          height: whiteSpace,
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.white.withOpacity(.5),
            fontSize: 20,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
