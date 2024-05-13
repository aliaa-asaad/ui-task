import 'package:flutter/material.dart';
import 'package:testing_app/features/analysis/domain/analysis_model.dart';

class CustomAnalysisListView extends StatelessWidget {
  const CustomAnalysisListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: analysis.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(right: 8),
          width: 170,
          //  height: 160,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  analysis[index].color.shade300.withOpacity(.5),
                  //  Colors.deepPurple.shade600,
                  analysis[index].color.shade600.withOpacity(.5),
                  analysis[index].color.shade900.withOpacity(.5)
                ]),
            border: Border.all(color: analysis[index].color, width: 2),
          ),
          child: Stack(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      analysis[index].number.toString(),
                      style: TextStyle(
                        color: analysis[index].color.shade300,
                        fontSize: 30, /* fontWeight: FontWeight.bold */
                      ),
                    ),
                    Text(
                      analysis[index].type,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20, /*  fontWeight: FontWeight.bold */
                      ),
                    ),
                    //   Spacer(),
                  ]),
              analysis[index].widget
            ],
          ),
        ),
      ),
    );
  }
}
