import 'package:flutter/material.dart';

class CalculatorHome extends StatefulWidget {
  @override
  _CalculatorHomeState createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  TextEditingController t1 = TextEditingController(text: "0");
  TextEditingController t2 = TextEditingController(text: "0");

  var num1 = 0, num2 = 0, sum = 0;

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 + num2;
    });
  }

  void doSubtract() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 - num2;
    });
  }

  void doMultiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 * num2;
    });
  }

  void doDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = (num1 ~/ num2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Output: $sum',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          TextField(
            controller: t1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: 'Enter a value'),
          ),
          TextField(
            controller: t2,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: 'Enter a value'),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                  color: Colors.red[400],
                  child: Text(
                    '+',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onPressed: () {
                    doAddition();
                    t1.clear();
                    t2.clear();
                  }),
              MaterialButton(
                  color: Colors.red[400],
                  child: Text(
                    '-',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onPressed: () {
                    doSubtract();
                    t1.clear();
                    t2.clear();
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                  color: Colors.red[400],
                  child: Text(
                    'x',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onPressed: () {
                    doMultiply();
                    t1.clear();
                    t2.clear();
                  }),
              MaterialButton(
                  color: Colors.red[400],
                  child: Text(
                    '/',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onPressed: () {
                    doDivision();
                    t1.clear();
                    t2.clear();
                  }),
            ],
          ),
        ]),
      ),
    );
  }
}
