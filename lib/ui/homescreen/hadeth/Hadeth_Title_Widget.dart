import 'package:flutter/material.dart';
import 'package:islami/ui/HadethDetails/Hadeth_Details_Screen.dart';
import 'package:islami/ui/homescreen/hadeth/Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          hadeth.Title,
          style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
