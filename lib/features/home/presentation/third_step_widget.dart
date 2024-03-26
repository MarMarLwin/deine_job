import 'package:deine_job/constants/app_sizes.dart';
import 'package:deine_job/constants/breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdStep extends StatelessWidget {
  const ThirdStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
      child: LayoutBuilder(builder: (context, constraint) {
        final maxWidth = constraint.maxWidth;
        if (maxWidth < Breakpoint.desktop) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Positioned(
                top: 0,
                child: RichText(
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
                  'assets/svg_images/business_deal.svg',
                  height: 189,
                  width: 250,
                  fit: BoxFit.contain,
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
              SvgPicture.asset(
                'assets/svg_images/personal_file.svg',
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
