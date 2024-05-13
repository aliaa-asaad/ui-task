import 'package:flutter/material.dart';
import 'package:testing_app/features/analysis/presentation/widgets/card_one_custom_widget.dart';
import 'package:testing_app/features/analysis/presentation/widgets/card_two_custom_widget.dart';

class Analysis {
  final int number;
  final String type;
  final Color color;
  final Widget widget;

  Analysis(
      {required this.number,
      required this.color,
      required this.type,
      required this.widget});
}

List analysis = [
  Analysis(
    number: 424,
    type: 'Submissions',
    color: Colors.deepPurple,
    widget: const Positioned(
      bottom: 0,
      left: 0,
      child: CardOneCustomWidget(),
    ),
  ),
  Analysis(
      number: 5,
      type: 'Contributers',
      color: Colors.blueGrey,
      widget: const CardTwoCustomWidget())
];
