import 'package:deine_job/constants/breakpoints.dart';
import 'package:deine_job/features/home/presentation/painter/circle_painter.dart';
import 'package:deine_job/features/home/presentation/painter/right_arrow_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FirstStep extends StatelessWidget {
  const FirstStep({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      final maxWidth = constraint.maxWidth;
      if (maxWidth < Breakpoint.desktop) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(
                'assets/svg_images/profile_data.svg',
                height: 145,
                width: 220,
                fit: BoxFit.contain,
              ),
            ),
            Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: 'Erstellen dein Lebenslauf',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.grey, fontSize: 15))
                ],
                text: '1.',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.grey, fontSize: 130)))
          ],
        );
      } else {
        return CustomPaint(
          painter: RightArrowPainter(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomPaint(
                painter: CirclePainter(),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: '1.',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.grey, fontSize: 130)),
                    TextSpan(
                        text: 'Erstellen dein Lebenslauf',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.grey, fontSize: 30))
                  ]),
                ),
              ),
              SvgPicture.asset(
                'assets/svg_images/profile_data.svg',
                height: 258,
                width: 384,
                fit: BoxFit.contain,
              ),
            ],
          ),
        );
      }
    });
  }
}
