import 'package:flutter/material.dart';
import 'package:islami/ui/chapter_details/chapter_details_screen.dart';

class ChapterTitleWidget extends StatelessWidget {
  String Title;
  int index;

  ChapterTitleWidget(this.Title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ChapterDetailsScreen.routeName,
            arguments: ChapterDetailsArgs(Title, index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(Title, style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
