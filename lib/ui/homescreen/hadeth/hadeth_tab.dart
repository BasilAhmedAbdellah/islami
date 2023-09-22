import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/homescreen/hadeth/Hadeth.dart';
import 'package:islami/ui/homescreen/hadeth/Hadeth_Title_Widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if (AllAhadeth.isEmpty) {
      loadHadethFile();
    }

    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset('assets/images/hadeth_header_image.png')),
          Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(
                color: Theme.of(context).primaryColor,
              )),
            ),
            child: Text(
              'Hadeth',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: AllAhadeth.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return HadethTitleWidget(AllAhadeth[index]);
                    },
                    separatorBuilder: (context, index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 60),
                          color: Theme.of(context).primaryColor,
                          width: double.infinity,
                          height: 2,
                        ),
                    itemCount: AllAhadeth.length),
          )
        ],
      ),
    );
  }

  List<Hadeth> AllAhadeth = [];

  void loadHadethFile() async {
    String HadethContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> HadethList = HadethContent.trim().split('#');

    for (int i = 0; i < HadethList.length; i++) {
      String singlehadeth = HadethList[i];
      List<String> HadethLines = singlehadeth.trim().split('\n');
      String title = HadethLines[0];
      HadethLines.remove(0);
      String Content = HadethLines.join('\n');
      Hadeth hadeth = Hadeth(Content, title);
      AllAhadeth.add(hadeth);
    }
    setState(() {});
  }
}
