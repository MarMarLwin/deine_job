import 'package:deine_job/common_widgets/primary_button.dart';
import 'package:deine_job/constants/app_colors.dart';
import 'package:deine_job/constants/app_sizes.dart';
import 'package:deine_job/constants/breakpoints.dart';
import 'package:deine_job/features/home/presentation/painter/banner_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (cotext, constrint) {
        if (constrint.maxWidth < Breakpoint.desktop) {
          return Container(
            height: 700,
            padding: const EdgeInsets.only(top: 67),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [AppColors.bannerColor1, AppColors.bannerColor2],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Deine Job \nwebsite',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 42),
                  ),
                ),
                gapH12,
                SvgPicture.asset(
                  'assets/svg_images/agreement_aajr.svg',
                  height: 405,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          );
        } else {
          return Container(
            height: 659,
            padding: const EdgeInsets.only(top: 67),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [AppColors.bannerColor1, AppColors.bannerColor2],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )),
            child: CustomPaint(
              painter: BannerCurveContainer(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 320,
                        child: Text(
                          'Deine Job \nwebsite',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60,
                                  color: AppColors.textColor),
                        ),
                      ),
                      gapH12,
                      PrimaryButton(
                        text: 'Kostenlos Registrieren',
                        onPressed: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: 455,
                    width: 455,
                    child: ClipOval(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                            'assets/svg_images/agreement_aajr.svg',
                            alignment: Alignment.center,
                            fit: BoxFit.cover),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
