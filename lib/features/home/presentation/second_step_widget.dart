import 'package:deine_job/constants/app_colors.dart';
import 'package:deine_job/constants/breakpoints.dart';
import 'package:deine_job/features/home/presentation/painter/second_step_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondStep extends StatelessWidget {
  const SecondStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [AppColors.bannerColor2, AppColors.bannerColor1],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )),
        child: CustomPaint(
          painter: SecondStepPainter(),
          child: LayoutBuilder(builder: (context, constraint) {
            final maxWidth = constraint.maxWidth;
            if (maxWidth < Breakpoint.desktop) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Positioned(
                    top: 0,
                    child: RichText(
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      text: TextSpan(children: [
                        TextSpan(
                            text: '2.',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: Colors.grey, fontSize: 130)),
                        TextSpan(
                          text: 'Erhalte Vermittlungs- angebot von Arbeitgeber',
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                        )
                      ]),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: SvgPicture.asset(
                      'assets/svg_images/about_me_wa29.svg',
                      height: 148,
                      width: 218,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              );
            } else {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    'assets/svg_images/task.svg',
                    height: 258,
                    width: 384,
                    fit: BoxFit.contain,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    text: TextSpan(children: [
                      TextSpan(
                          text: '2.',
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
                ],
              );
            }
          }),
        ));
  }
}
