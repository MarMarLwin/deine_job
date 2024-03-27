import 'package:deine_job/constants/app_colors.dart';
import 'package:deine_job/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.isWebScrolled = false});
  final bool isWebScrolled;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: 67,
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 6,
                      offset: const Offset(0, 3))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: isWebScrolled ? true : false,
                      child: Text(
                        'Jetzt Klicken',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium!,
                      ),
                    ),
                    gapW16,
                    Visibility(
                      visible: isWebScrolled ? true : false,
                      child: Container(
                        height: 40,
                        width: 255,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.5))),
                        child: Center(
                          child: Text(
                            'Kostenlos Registrieren',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: AppColors.secondaryColor),
                          ),
                        ),
                      ),
                    ),
                    gapW16,
                    Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.secondaryColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 7,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [AppColors.secondaryColor, AppColors.primaryColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
