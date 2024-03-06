import 'dart:io';

void main() {

// Intro
// erste Zahl prompt
print("""

Dart Zwei-Zahl-Taschenrechner!
----------------------------------------------------------------
Mit dem Calculator kannst du Operationen mit zwei Zahlen durchführen. 
Schreiben Sie 'exit' um das Programm zu beenden.

Bitte geben Sie die ersten Zahl ein: """);
String? InputOne = stdin.readLineSync();
InputOne = InputOne?.trim();
double firstNum = 0.0;

//check exit, else erste zahl setzen
if (InputOne == "exit") {
  exit(0);
} else {
  firstNum = double.parse(InputOne!);
}

// zweite Zahl prompt
print("""
      Bitte geben Sie die zweite Zahl ein
      'exit' um das Programm zu beenden.""");
String? InputTwo = stdin.readLineSync();
InputTwo = InputTwo?.trim();
double secondNum = 0.0;

//check exit, else zweite zahl setzen
if (InputTwo == "exit") {
  exit(0);
} else {
  secondNum = double.parse(InputTwo!);
}

// operation prompt
print("""\nWählen Sie eine Operation aus:
  + für Addition
  - für Subtraction
  * für Multiplikation
  / für Division
  exit um das Programm zu beenden""");
String? operator = stdin.readLineSync();
operator = operator?.trim();

switch (operator) {
  case "+":
    print("$firstNum + $secondNum = ${firstNum + secondNum}");
  case "-":
    print("$firstNum - $secondNum = ${firstNum - secondNum}");
  case "*":
    print("$firstNum * $secondNum = ${firstNum * secondNum}");
  case "/":
    print("$firstNum / $secondNum = ${firstNum / secondNum}");
  case "exit":
    exit(0);
  default:
    print("what?");
}

}
