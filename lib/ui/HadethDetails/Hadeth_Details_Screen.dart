import 'package:flutter/material.dart';
import 'package:islami/ui/homescreen/hadeth/Hadeth.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'Hadeth_Screen';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/background_all.png'),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.Title),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
                child: SingleChildScrollView(
                    child: Text(
                  args.Content,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
