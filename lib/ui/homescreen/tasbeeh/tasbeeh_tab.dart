import 'package:flutter/material.dart';

class TasbeehTab extends StatefulWidget {
  @override
  State<TasbeehTab> createState() => _TasbeehTabState();
}

class _TasbeehTabState extends State<TasbeehTab> {
  double rotationangle = 0.0;
  int Counter = 0;
  List<String> doaa = ['سبحان الله', 'الحمد لله', 'الله اكبر'];
  int currentdoaaindex = 0;

  @override
  Widget build(BuildContext context) {
    String currentdoaa = doaa[currentdoaaindex];
    return Column(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                rotationangle += 45;
                Counter++;
                if (Counter % 33 == 0) {
                  int index = (Counter ~/ 33) % doaa.length;
                  currentdoaaindex = (currentdoaaindex + 1) % doaa.length;
                  Counter = 0;
                }
              });
            },
            child: Transform.rotate(
              angle: (rotationangle * (3.14159265359 / 180)),
              child: Image.asset(
                'assets/images/body_of_seb7a.png',
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          child: Text(
            'عدد التسبيحات',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 160),
          child: TextFormField(
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              filled: true,
              hintText: Counter.toString(),
              hintStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              labelStyle: TextStyle(color: Colors.black),
              fillColor: Color(0x91B7935F),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 140),
          child: TextFormField(
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              filled: true,
              hintText: currentdoaa,
              hintStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              labelStyle: TextStyle(color: Colors.black),
              fillColor: Theme.of(context).primaryColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
