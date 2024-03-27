import 'package:deine_job/common_widgets/primary_button.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 6,
                offset: const Offset(0, 0))
          ]),
      child: Center(
        child: PrimaryButton(
          text: 'Kostenlos Registrieren',
          onPressed: () {},
        ),
      ),
    );
  }
}
