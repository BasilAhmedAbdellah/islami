import 'package:flutter/material.dart';
import 'package:islami/ui/HadethDetails/Hadeth_Details_Screen.dart';
import 'package:islami/ui/chapter_details/chapter_details_screen.dart';
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
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
