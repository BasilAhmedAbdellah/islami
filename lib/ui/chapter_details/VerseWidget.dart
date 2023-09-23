import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String Content;
  int index;

  VerseWidget(this.Content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Text(
        '$Content {${index + 1}}',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
