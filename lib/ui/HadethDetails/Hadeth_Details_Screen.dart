import 'package:flutter/material.dart';
import 'package:islami/provider/SettingsProvider.dart';
import 'package:islami/ui/homescreen/hadeth/Hadeth.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'Hadeth_Screen';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(provider.getbackgroundImage()),
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
                        style: Theme.of(context).textTheme.bodyMedium)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
