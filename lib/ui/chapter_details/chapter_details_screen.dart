import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/provider/SettingsProvider.dart';
import 'package:islami/ui/chapter_details/VerseWidget.dart';
import 'package:provider/provider.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'ChapterDetailsScreen';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (Verses.isEmpty) {
      loadfiles(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getbackgroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Card(
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return VerseWidget(Verses[index], index);
            },
            separatorBuilder: (context, index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 60),
              color: Theme.of(context).dividerColor,
              width: double.infinity,
              height: 2,
            ),
            itemCount: Verses.length,
          ),
        ),
      ),
    );
  }

  List<String> Verses = [];

  void loadfiles(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    Verses = fileContent.split('\n');
    setState(() {});
  }
}

class ChapterDetailsArgs {
  String title;
  int index;

  ChapterDetailsArgs(this.title, this.index);
}
