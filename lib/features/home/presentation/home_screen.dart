import 'package:deine_job/features/home/presentation/banner_widget.dart';
import 'package:deine_job/features/home/presentation/first_step_widget.dart';
import 'package:deine_job/features/home/presentation/second_step_widget.dart';
import 'package:deine_job/features/home/presentation/steps_widget.dart';
import 'package:deine_job/features/home/presentation/third_step_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            children: [
              BannerWidget(),
              StepsWidget(),
              FirstStep(),
              SecondStep(),
              ThirdStep()
            ],
          ))
        ],
      ),
    );
  }
}
