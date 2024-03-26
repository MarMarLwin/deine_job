import 'package:deine_job/constants/app_sizes.dart';
import 'package:deine_job/constants/breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FirstStep extends StatelessWidget {
  const FirstStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 254,
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
      child: LayoutBuilder(builder: (context, constraint) {
        final maxWidth = constraint.maxWidth;
        if (maxWidth < Breakpoint.desktop) {
          return Stack(
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
              Positioned(
                bottom: 0,
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
                            .copyWith(color: Colors.grey, fontSize: 15))
                  ]),
                ),
              ),
            ],
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
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
              SvgPicture.asset(
                'assets/svg_images/profile_data.svg',
                height: 258,
                width: 384,
                fit: BoxFit.contain,
              ),
            ],
          );
        }
      }),
    );
  }
}
