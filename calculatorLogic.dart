import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Logic {
  double firstNumber = 0;
  double secondNumber = 0;
  dynamic firstResult = "";
  dynamic finalResult = "0";
  dynamic operation = "";

  void reset() {
    firstNumber = 0;
    secondNumber = 0;
    firstResult = "";
    finalResult = "0";
    operation = "";
  }

  void add() {
    parseNumber();
    performOperation('+');
  }

  void sub() {
    parseNumber();
    performOperation('-');
  }

  void mul() {
    parseNumber();
    performOperation('*');
  }

  void div() {
    parseNumber();
    performOperation('/');
  }

  void percentage() {
    firstResult = firstNumber / 100;
    finalResult = firstResult;
  }

  void negative() {
    firstResult = firstResult.toString().startsWith('-')
        ? firstResult = '-' + firstResult.toString().substring(1)
        : finalResult = '-' + finalResult.toString();

    finalResult = firstResult;
    }

  void decimal() {
    if (!firstResult.toString().contains('-')) {
      firstResult = firstResult.toString() + '0';
    }
    finalResult = firstResult;
  }

  void execute() {
    if (operation == '+') {
      addCalculator();
    } else if (operation == '-') {
      subCalculator();
    } else if (operation == '*') {
      mulCalculator();
    } else if (operation == '/') {
      divCalculator();
    }
  }


  void setNumber(number) {
    firstResult += number;
    finalResult = firstResult;
  }

  void parseNumber() {
    if (firstNumber == 0) {
      firstNumber = double.parse(firstResult);
    }
    else {
      secondNumber = double.parse(firstResult);
    }
  }

  void addCalculator() {
    firstResult = (firstNumber + secondNumber).toString();
    firstNumber = double.parse((firstResult));
    finalResult = firstResult;
  }

  void subCalculator() {
    firstResult = (firstNumber - secondNumber).toString();
    firstNumber = double.parse((firstResult));
    finalResult = firstResult;
  }

  void mulCalculator() {
    firstResult = (firstNumber * secondNumber).toString();
    firstNumber = double.parse((firstResult));
    finalResult = firstResult;
  }

  void divCalculator() {
    firstResult = (firstNumber / secondNumber).toString();
    firstNumber = double.parse((firstResult));
    finalResult = firstResult;
  }


  void performOperation(symbol) {
    operation = symbol;
    firstResult = "0";
  }


}