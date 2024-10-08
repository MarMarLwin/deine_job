import 'package:deine_job/common_widgets/app_bar.dart';
import 'package:deine_job/common_widgets/bottom_bar.dart';
import 'package:deine_job/constants/app_sizes.dart';
import 'package:deine_job/constants/breakpoints.dart';
import 'package:deine_job/features/home/presentation/banner_widget.dart';
import 'package:deine_job/features/home/presentation/first_step_widget.dart';
import 'package:deine_job/features/home/presentation/painter/steps_painter.dart';
import 'package:deine_job/features/home/presentation/second_step_widget.dart';
import 'package:deine_job/common_widgets/steps_widget.dart';
import 'package:deine_job/features/home/presentation/third_step_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;
  bool isWebScrolled = false;
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    setState(() {
      var index = (_scrollController.offset).round() + 1;
      if (index > 500) {
        setState(() {
          isWebScrolled = true;
        });
      } else {
        setState(() {
          isWebScrolled = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          isWebScrolled:
              isWebScrolled && !(constraint.maxWidth < Breakpoint.desktop),
        ),
        bottomNavigationBar:
            constraint.maxWidth < Breakpoint.desktop ? const BottomBar() : null,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
                child: Column(
              children: [
                const BannerWidget(),
                const StepsWidget(),
                CustomPaint(
                  painter: StepsPainter(),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FirstStep(),
                      gapH24,
                      SecondStep(),
                      gapH24,
                      ThirdStep()
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      );
    });
  }
}
