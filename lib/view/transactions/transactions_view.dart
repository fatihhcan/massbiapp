import 'package:flutter/material.dart';
import 'package:sampleexercise/core/components/theme/text/text_style.dart';

final TextEditingController cmInput = TextEditingController(text: "");
final TextEditingController kgInput = TextEditingController(text: "");

class TransactionsView extends StatefulWidget {
  TransactionsView({Key key}) : super(key: key);

  @override
  _TransactionsViewState createState() => _TransactionsViewState();
}

class _TransactionsViewState extends State<TransactionsView> {
  double cm = 0;
  int kg = 0;
  double result = 0;
  double impact = 0;

  calculation() {
    setState(() {
      cm = double.parse(cmInput.text);
      kg = int.parse(kgInput.text);
      impact = cm * cm;
      result = kg / impact;
    });
  }

  get pageHeight => MediaQuery.of(context).size.height;
  get pageWidth => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Column(
          children: [
            buildHeightEditText(),
            SizedBox(
              height: pageHeight * 0.03,
            ),
            buildWeightEditText(),
            SizedBox(
              height: pageHeight * 0.03,
            ),
            buildResultEditText(),
            SizedBox(
              height: pageHeight * 0.03,
            ),
            buildResultButton()
          ],
        ),
      )),
    );
  }

  RaisedButton buildResultButton() {
    return RaisedButton(
            onPressed: () {
              calculation();
            },
            child: resultText,
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.blue)),
          );
  }

  Padding buildResultEditText() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "BMI: $result",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }

  Padding buildWeightEditText() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextField(
          controller: kgInput,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: weightText.data,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }

  Padding buildHeightEditText() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextField(
          controller: cmInput,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: heightText.data,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
