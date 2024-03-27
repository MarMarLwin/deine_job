import 'package:deine_job/constants/breakpoints.dart';
import 'package:deine_job/features/home/presentation/painter/left_arrow_painter.dart';
import 'package:deine_job/features/home/presentation/painter/circle_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdStep extends StatelessWidget {
  const ThirdStep({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      final maxWidth = constraint.maxWidth;
      if (maxWidth < Breakpoint.desktop) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Positioned(
              top: 0,
              child: RichText(
                textAlign: TextAlign.center,
                maxLines: 4,
                text: TextSpan(children: [
                  TextSpan(
                      text: '3.',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.grey, fontSize: 130)),
                  TextSpan(
                    text: 'Vermittlung nach Provision oder Stundenlohn',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.grey, fontSize: 15),
                  )
                ]),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(
                'assets/svg_images/swipe_profiles.svg',
                height: 189,
                width: 250,
                fit: BoxFit.contain,
              ),
            ),
          ],
        );
      } else {
        return CustomPaint(
          painter: LeftArrowPainter(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomPaint(
                painter: CirclePainter(),
                child: RichText(
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  text: TextSpan(children: [
                    TextSpan(
                        text: '3.',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.grey, fontSize: 130)),
                    TextSpan(
                        text: 'Mit nur einem Klick bewerben',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.grey, fontSize: 30))
                  ]),
                ),
              ),
              SvgPicture.asset(
                'assets/svg_images/personal_file.svg',
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
