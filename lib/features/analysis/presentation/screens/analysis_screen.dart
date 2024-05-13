import 'package:flutter/material.dart';
import 'package:testing_app/features/analysis/presentation/widgets/average_score_pie_chart.dart';
import 'package:testing_app/features/analysis/presentation/widgets/custom_analysis_list_view.dart';
import 'package:testing_app/features/analysis/presentation/widgets/custom_app_bar.dart';
import 'package:testing_app/features/analysis/presentation/widgets/custom_card_decoration.dart';
import 'package:testing_app/features/analysis/presentation/widgets/custom_shadow.dart';
import 'package:testing_app/features/analysis/presentation/widgets/screen_title_and_logo.dart';
import 'package:testing_app/features/analysis/presentation/widgets/submissions_analysis_content.dart';
import 'package:testing_app/features/analysis/presentation/widgets/users_per_city_content.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            const CustomShadow(),
            const SingleChildScrollView(
              padding: EdgeInsets.all(24),
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  CustomAppBar(),
                 ScreenTitleAndLogo(),
                  SizedBox(
                    height: 16,
                  ),
                    CustomAnalysisListView(),
                  SizedBox(
                    height: 20,
                  ),
                  CustomCardDecoration(child: SubmissionsAnaysisContent()),
                  SizedBox(
                    height: 20,
                  ),
                 CustomCardDecoration(child: UsersPerCityContent()),
                 SizedBox(
                    height: 20,
                  ),
                  CustomCardDecoration(child: AverageScorePieChart())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
