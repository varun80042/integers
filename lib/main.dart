import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main2.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/second': (context) => Home2(),
      },
    ));

List<int> numList = [];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic numText = TextEditingController();
  dynamic num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('First Page'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Container(
        height: 725,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/c7/91/65/c791658868d3c71a46dccc8ae8238cec.jpg"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text('\n\n\n\n'),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 25.0),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  border: Border.all(
                    width: 5,
                    color: Colors.white,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 8.0),
                        child: Center(
                            child: Text(
                          'Enter an integer',
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Courier',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: TextField(
                        onChanged: (text) => {},
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Courier',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^-?\d*\.?\d*')),
                        ],
                        controller: numText,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.red,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text('\n\n'),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num = int.parse(numText.text);
                      numList.add(num);
                      // print(numList);
                      numText.text = "";
                    });
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Courier',
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.all(15.0),
                  ),
                ),
              ),
              Container(
                child: Text("\n\n"),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Courier',
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.all(15.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
