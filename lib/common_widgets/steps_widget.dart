import 'package:deine_job/constants/app_colors.dart';
import 'package:deine_job/constants/app_sizes.dart';
import 'package:flutter/material.dart';

const List<String> tabs = ['Arbeitnehmer', 'Arbeitgeber', 'Temporärbüro'];

class StepsWidget extends StatefulWidget {
  const StepsWidget({super.key});

  @override
  State<StepsWidget> createState() => _StepsWidgetState();
}

class _StepsWidgetState extends State<StepsWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p12),
      child: Column(children: [
        ToggleButtons(
            direction: Axis.horizontal,
            onPressed: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            selectedBorderColor: AppColors.secondaryColor,
            selectedColor: Colors.white,
            fillColor: AppColors.secondaryColor,
            color: AppColors.secondaryColor,
            constraints: const BoxConstraints(
              minHeight: 40.0,
              minWidth: 80.0,
            ),
            isSelected: [
              _selectedIndex == 0,
              _selectedIndex == 1,
              _selectedIndex == 2
            ],
            children: [
              for (var tab in tabs)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(tab),
                ),
            ]),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            _selectedIndex == 0
                ? 'Drei einfache Schritte zu deinem neuen Job'
                : _selectedIndex == 1
                    ? 'Drei einfache Schritte zu deinem neuen Mitarbeiter'
                    : 'Drei einfache Schritte zur Vermittlung neuer Mitarbeiter',
            style:
                Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 21),
            textAlign: TextAlign.center,
          ),
        )
      ]),
    );
  }
}
