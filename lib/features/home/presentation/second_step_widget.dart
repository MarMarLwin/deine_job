import 'package:deine_job/constants/app_sizes.dart';
import 'package:deine_job/constants/breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondStep extends StatelessWidget {
  const SecondStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
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
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                    )
                  ]),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  'assets/svg_images/job_offers.svg',
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
    );
  }
}
