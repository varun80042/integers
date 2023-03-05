import 'package:flutter/material.dart';
import 'main2.dart';
import 'integers.dart';

int num = 7;

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/second':(context) => Home2(),
  },
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // List<int> sample = [1,2,4,5,6];
  // int num = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [

          Text('$sample'),

          TextButton(onPressed: () {
            setState( () {
              sample = sample + [num];
              num = num + 1;
            });
          }, child: Text('Add Integer')),

          TextButton(
              onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
              child: Text('Go to second page')),
        ],
      ),
    );
  }
}



