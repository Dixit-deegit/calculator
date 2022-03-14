import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Calculator', home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  List nums = [];
  var op = [];
  var num1, num2, maxline;
  bool chk = false;

  var eque = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 27, 30, 36),
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Calculation Area
            SizedBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 90,
                    height: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                              child: Icon(
                                Icons.sunny,
                              ),
                            ),
                            Icon(Icons.nightlight)
                          ]),
                    ),
                  ),
                  SizedBox(height: 100),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: TextField(
                          controller: eque,
                          readOnly: true,
                          showCursor: true,
                          style: TextStyle(color: Colors.white, fontSize: 35),
                          maxLines: maxline),
                    ),
                  ),
                ],
              ),
            ),
            //Spacing

            // Buttons Area
            SizedBox(
              height: 480,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 19,
                  crossAxisCount: 4,
                  children: [
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = '';
                          nums.clear();
                          op.clear();
                          chk = false;
                          setState(() {});
                        },
                        child: const Text(' AC',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 235, 79, 58)))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          // eque.text = eque.te==xt.subs string(0,Val.length-1);
                          var userInput = eque.text;
                          if (userInput.length != 0) {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            eque.text = userInput;
                          } else {
                            chk = false;
                          }
                          setState(() {});
                        },
                        child: const Text('<-',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 99, 221, 191)))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '%';
                        },
                        child: const Text('%',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 99, 221, 191)))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '÷';
                          op.add("/");
                          chk = true;
                        },
                        child: const Text('÷',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 99, 221, 191)))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '7';
                          nums.add(7);
                          setState(() {});
                        },
                        child: const Text('7',
                            style: TextStyle(
                              fontSize: 23,
                            ))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '8';
                          nums.add(8);
                          setState(() {});
                        },
                        child: const Text('8',
                            style: TextStyle(
                              fontSize: 23,
                            ))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '9';
                          nums.add(9);
                          setState(() {});
                        },
                        child: const Text('9',
                            style: TextStyle(
                              fontSize: 23,
                            ))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '×';
                          op.add("*");
                          chk = true;
                        },
                        child: const Text('×',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 99, 221, 191)))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '4';
                          nums.add(4);
                          setState(() {});
                        },
                        child: const Text('4',
                            style: TextStyle(
                              fontSize: 23,
                            ))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '5';
                          setState(() {});
                        },
                        child: const Text('5',
                            style: TextStyle(
                              fontSize: 23,
                            ))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '6';
                          setState(() {});
                        },
                        child: const Text('6',
                            style: TextStyle(
                              fontSize: 23,
                            ))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '-';
                        },
                        child: const Text('⁻',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 99, 221, 191)))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '1';
                          setState(() {});
                        },
                        child: const Text('1',
                            style: TextStyle(
                              fontSize: 23,
                            ))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '2';
                          setState(() {});
                        },
                        child: const Text('2',
                            style: TextStyle(
                              fontSize: 23,
                            ))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '3';
                          setState(() {});
                        },
                        child: const Text('3',
                            style: TextStyle(
                              fontSize: 23,
                            ))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '+';
                        },
                        child: const Text('+',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 99, 221, 191)))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '()';
                        },
                        child: const Text('(  )',
                            style: TextStyle(
                              fontSize: 23,
                            ))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '0';
                          setState(() {});
                        },
                        child: const Text('0',
                            style: TextStyle(
                              fontSize: 23,
                            ))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {
                          eque.text = eque.text + '.';
                        },
                        child: const Text('∙',
                            style: TextStyle(
                              fontSize: 23,
                            ))),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor:
                                const Color.fromARGB(255, 39, 43, 50)),
                        onPressed: () {},
                        child: const Text('=',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 99, 221, 191)))),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
// Color.fromARGB(255, 99, 221, 191)