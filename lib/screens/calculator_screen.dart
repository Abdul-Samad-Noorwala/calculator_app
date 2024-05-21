import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/calculator_button.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String textToDisplay = '';
  late String res;
  late String operation;

  void btnONclick(String btnVal) {
    if (btnVal == 'C') {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-$textToDisplay';
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '÷') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '÷') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: const Alignment(1, 1),
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                history,
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: const Alignment(1, 1),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                textToDisplay,
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 46,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButtons(
                  text: "AC",
                  color: const Color.fromARGB(255, 209, 209, 209),
                  textcolor: Colors.black,
                  textsize: 18,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "C",
                  color: const Color.fromARGB(255, 209, 209, 209),
                  textcolor: Colors.black,
                  textsize: 20,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "<",
                  color: const Color.fromARGB(255, 209, 209, 209),
                  textcolor: Colors.black,
                  textsize: 22,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "÷",
                  color: Colors.orange,
                  textcolor: Colors.white,
                  textsize: 30,
                  callback: btnONclick),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButtons(
                  text: "9",
                  color: const Color.fromARGB(255, 73, 73, 73),
                  textcolor: Colors.white,
                  textsize: 20,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "8",
                  color: const Color.fromARGB(255, 73, 73, 73),
                  textcolor: Colors.white,
                  textsize: 20,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "7",
                  color: const Color.fromARGB(255, 73, 73, 73),
                  textcolor: Colors.white,
                  textsize: 20,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "X",
                  color: Colors.orange,
                  textcolor: Colors.white,
                  textsize: 20,
                  callback: btnONclick),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButtons(
                  text: "6",
                  color: const Color.fromARGB(255, 73, 73, 73),
                  textcolor: Colors.white,
                  textsize: 20,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "5",
                  color: const Color.fromARGB(255, 73, 73, 73),
                  textcolor: Colors.white,
                  textsize: 20,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "4",
                  color: const Color.fromARGB(255, 73, 73, 73),
                  textcolor: Colors.white,
                  textsize: 20,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "-",
                  color: Colors.orange,
                  textcolor: Colors.white,
                  textsize: 30,
                  callback: btnONclick),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButtons(
                  text: "3",
                  color: const Color.fromARGB(255, 73, 73, 73),
                  textcolor: Colors.white,
                  textsize: 20,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "2",
                  color: const Color.fromARGB(255, 73, 73, 73),
                  textcolor: Colors.white,
                  textsize: 20,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "1",
                  color: const Color.fromARGB(255, 73, 73, 73),
                  textcolor: Colors.white,
                  textsize: 20,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "+",
                  color: Colors.orange,
                  textcolor: Colors.white,
                  textsize: 30,
                  callback: btnONclick),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButtons(
                  text: "+/-",
                  color: const Color.fromARGB(255, 73, 73, 73),
                  textcolor: Colors.white,
                  textsize: 15.5,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "0",
                  color: const Color.fromARGB(255, 73, 73, 73),
                  textcolor: Colors.white,
                  textsize: 20,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "00",
                  color: const Color.fromARGB(255, 73, 73, 73),
                  textcolor: Colors.white,
                  textsize: 18,
                  callback: btnONclick),
              CalculatorButtons(
                  text: "=",
                  color: Colors.orange,
                  textcolor: Colors.white,
                  textsize: 30,
                  callback: btnONclick),
            ],
          ),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
