import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/SettingsProvider.dart';
import 'package:islami/ui/homescreen/settings/LanguageBottomSheet.dart';
import 'package:islami/ui/homescreen/settings/ThemeBottomSheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 64, horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.theme),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: Theme.of(context).dividerColor, width: 1),
              ),
              child: Text(
                  provider.isDarkEnabled()
                      ? AppLocalizations.of(context)!.dark
                      : AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.titleMedium),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(AppLocalizations.of(context)!.language),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: Theme.of(context).dividerColor, width: 1),
              ),
              child: Text(
                  provider.currentLocale == 'en' ? "English" : "العربيه",
                  style: Theme.of(context).textTheme.titleMedium),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeBottomSheet();
      },
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LanguageBottomSheet();
      },
    );
  }
}
