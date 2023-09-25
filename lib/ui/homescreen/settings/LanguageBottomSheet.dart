import 'package:flutter/material.dart';
import 'package:islami/provider/SettingsProvider.dart';
import 'package:provider/provider.dart';

import '../../MyThemeData.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                provider.ChangeLocale('en');
              },
              child: provider.currentLocale == 'en'
                  ? getSelectedItem('English')
                  : getUnselectedItem('English')),
          InkWell(
              onTap: () {
                provider.ChangeLocale('ar');
              },
              child: provider.currentLocale == 'ar'
                  ? getSelectedItem('العربيه')
                  : getUnselectedItem('العربيه')),
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
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
