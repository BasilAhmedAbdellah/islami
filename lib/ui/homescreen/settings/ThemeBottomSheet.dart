import 'package:flutter/material.dart';
import 'package:islami/ui/MyThemeData.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('Light'),
          getUnselectedItem('Dark'),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: MyThemeData.darkSecondry)),
        Icon(
          Icons.check,
          color: MyThemeData.darkSecondry,
        ),
      ],
    );
  }

  Widget getUnselectedItem(String text) {
    return Text(text, style: Theme.of(context).textTheme.titleMedium);
  }
}
