import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

void main() => runApp(MaterialApp(
      home: Home2(),
    ));

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: 725,
          constraints: BoxConstraints(minHeight: 725),
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
                  child: Text('\n'),
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
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 8.0),
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                'Integers entered',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Courier',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 0.5,
                                indent: 10,
                                endIndent: 10,
                              ),
                              Text(''),
                              Column(
                                children: [
                                  for (int i = 0; i < numList.length; i++)
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 5),
                                      child: Center(
                                        child: Text(
                                          '${numList[i]}',
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontFamily: 'Courier',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
