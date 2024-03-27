import 'dart:ui';

import 'package:deine_job/common_widgets/primary_button.dart';
import 'package:deine_job/constants/app_colors.dart';
import 'package:deine_job/constants/app_sizes.dart';
import 'package:deine_job/constants/breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LayoutBuilder(builder: (cotext, constraint) {
          return Container(
            height: constraint.maxWidth < Breakpoint.desktop ? 750 : 659,
            padding: const EdgeInsets.only(top: 67),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [AppColors.bannerColor1, AppColors.bannerColor2],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )),
            child: LayoutBuilder(
              builder: (cotext, constrint) {
                if (constrint.maxWidth < Breakpoint.desktop) {
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        children: [
                          Center(
                            child: Text(
                              'Deine Job \nwebsite',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 42),
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
                    ],
                  );
                } else {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                                  .displayLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 65),
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
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset(
                              'assets/svg_images/agreement_aajr.svg',
                              fit: BoxFit.contain),
                        ),
                      )
                    ],
                  );
                }
              },
            ),
          );
        }),
        // Container(
        //   height: 67,
        //   width: MediaQuery.sizeOf(context).width,
        //   padding: const EdgeInsets.symmetric(horizontal: 10),
        //   decoration: const BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.only(
        //           bottomLeft: Radius.circular(12),
        //           bottomRight: Radius.circular(12)),
        //       boxShadow: [
        //         BoxShadow(
        //             color: AppColors.boxShadowColor,
        //             spreadRadius: 3,
        //             blurRadius: 1,
        //             offset: Offset(0, 0))
        //       ]),
        //   child: Align(
        //     alignment: Alignment.centerRight,
        //     child: Text(
        //       'Login',
        //       textAlign: TextAlign.center,
        //       style: Theme.of(context)
        //           .textTheme
        //           .bodyMedium!
        //           .copyWith(color: AppColors.secondaryColor),
        //     ),
        //   ),
        // ),
        // Container(
        //   height: 7,
        //   decoration: const BoxDecoration(
        //       gradient: LinearGradient(
        //     colors: [AppColors.secondaryColor, AppColors.primaryColor],
        //     begin: Alignment.centerLeft,
        //     end: Alignment.centerRight,
        //   )),
        // ),
      ],
    );
  }
}
