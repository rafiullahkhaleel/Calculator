import 'package:flutter/material.dart';
import 'package:untitled/components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyCalculator(),
    );
  }
}

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  int sum(int a, int b) {
    // if (b == null) {
    //   error = 'Enter 2nd num';
    // }else{
    //   error = 'Enter 1st num';
    //
    // }
    return a + b;
  }

  int sub(int a, int b) {
    return a - b;
  }

  int mul(int a, int b) {
    return a * b;
  }

  double division(int a, int b) {
    return a / b;
  }

  var firstUserInput = '';
  var secondUserInput = '';
  var operation = '';
  var error = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(firstUserInput.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500)),
                  Text(operation.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500)),
                  Text(secondUserInput.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500)),
                  Text(
                    error.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(
                        title: 'AC',
                        onpresse: () {
                          firstUserInput = '';
                          secondUserInput = '';
                          operation = '';
                          error = '';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '+/-',
                        onpresse: () {
                          firstUserInput += '+/-';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '%',
                        onpresse: () {
                          firstUserInput += '%';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '/',
                        onpresse: () {
                          operation += '/';
                          setState(() {});
                        },
                        color: const Color(0xffffa00a),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '7',
                        onpresse: () {
                          if (operation == '+' ||
                              operation == 'x' ||
                              operation == '-' ||
                              operation == '/') {
                            secondUserInput += '7';
                          } else {
                            firstUserInput += '7';
                          }
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '8',
                        onpresse: () {
                          if (operation == '+' ||
                              operation == 'x' ||
                              operation == '-' ||
                              operation == '/') {
                            print('2nd');
                            secondUserInput += '8';
                          } else {
                            print('1st');

                            firstUserInput += '8';
                          }
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '9',
                        onpresse: () {
                          if (operation == '+' ||
                              operation == 'x' ||
                              operation == '-' ||
                              operation == '/') {
                            secondUserInput += '9';
                          } else {
                            firstUserInput += '9';
                          }
                          setState(() {});
                        },
                      ),
                      MyButton(
                          title: 'x',
                          onpresse: () {
                            operation = 'x';
                            setState(() {});
                          },
                          color: const Color(0xffffa00a)),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '4',
                        onpresse: () {
                          if (operation == '+' ||
                              operation == 'x' ||
                              operation == '-' ||
                              operation == '/') {
                            secondUserInput += '4';
                          } else {
                            firstUserInput += '4';
                          }
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '5',
                        onpresse: () {
                          if (operation == '+' ||
                              operation == 'x' ||
                              operation == '-' ||
                              operation == '/') {
                            secondUserInput += '5';
                          } else {
                            firstUserInput += '5';
                          }
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '6',
                        onpresse: () {
                          if (operation == '+' ||
                              operation == 'x' ||
                              operation == '-' ||
                              operation == '/') {
                            secondUserInput += '6';
                          } else {
                            firstUserInput += '6';
                          }
                          setState(() {});
                        },
                      ),
                      MyButton(
                          title: '-',
                          onpresse: () {
                            operation = '-';
                            setState(() {});
                          },
                          color: const Color(0xffffa00a)),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '1',
                        onpresse: () {
                          if (operation == '+' ||
                              operation == 'x' ||
                              operation == '-' ||
                              operation == '/') {
                            secondUserInput += '1';
                          } else {
                            firstUserInput += '1';
                          }
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '2',
                        onpresse: () {
                          if (operation == '+' ||
                              operation == 'x' ||
                              operation == '-' ||
                              operation == '/') {
                            secondUserInput += '2';
                          } else {
                            firstUserInput += '2';
                          }
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '3',
                        onpresse: () {
                          if (operation == '+' ||
                              operation == 'x' ||
                              operation == '-' ||
                              operation == '/') {
                            secondUserInput += '3';
                          } else {
                            firstUserInput += '3';
                          }
                          setState(() {});
                        },
                      ),
                      MyButton(
                          title: '+',
                          onpresse: () {
                            operation = '+';
                            setState(() {});
                          },
                          color: const Color(0xffffa00a)),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '0',
                        onpresse: () {
                          if (operation == '+' ||
                              operation == 'x' ||
                              operation == '-' ||
                              operation == '/') {
                            secondUserInput += '0';
                          } else {
                            firstUserInput += '0';
                          }
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '.',
                        onpresse: () {
                          if (operation == '+' ||
                              operation == 'x' ||
                              operation == '-' ||
                              operation == '/') {
                            secondUserInput += '.';
                          } else {
                            firstUserInput += '.';
                          }
                          setState(() {});
                        },
                      ),
                      MyButton(
                          title: 'DEL',
                          onpresse: () {
                            if (secondUserInput.isNotEmpty) {
                              secondUserInput = secondUserInput.substring(
                                  0, secondUserInput.length - 1);
                            } else if (operation.isNotEmpty) {
                              operation = "";
                            } else if (firstUserInput.isNotEmpty) {
                              firstUserInput = firstUserInput.substring(
                                  0, firstUserInput.length - 1);
                            }
                            setState(() {});
                          }),
                      MyButton(
                          title: '=',
                          onpresse: () {
                            if (firstUserInput == '') {
                              error = 'Please enter the number';
                              setState(() {});
                              return;
                            } else if (operation == '') {
                              error = 'Please enter the operator';
                              setState(() {});
                              return;
                            } else if (secondUserInput == '') {
                              print('2nd');
                              error = 'Please enter the second number';
                              setState(() {});
                              return;
                            }

                            if (operation == '+') {
                              print('add');
                              firstUserInput = sum(int.parse(firstUserInput),
                                      int.parse(secondUserInput))
                                  .toString();
                              secondUserInput = '';
                              operation = '';
                              error = '';
                            } else if (operation == '-') {
                              firstUserInput = sub(int.parse(firstUserInput),
                                      int.parse(secondUserInput))
                                  .toString();
                              secondUserInput = '';
                              operation = '';
                              error = '';
                            } else if (operation == 'x') {
                              firstUserInput = mul(int.parse(firstUserInput),
                                      int.parse(secondUserInput))
                                  .toString();
                              secondUserInput = '';
                              operation = '';
                              error = '';
                            } else if (operation == '/') {
                              firstUserInput = division(
                                      int.parse(firstUserInput),
                                      int.parse(secondUserInput))
                                  .toString();
                              secondUserInput = '';
                              operation = '';
                              error = '';
                            }
                            setState(() {});
                          },
                          color: const Color(0xffffa00a)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
