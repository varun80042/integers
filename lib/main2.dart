import 'package:flutter/material.dart';
import 'main.dart';
import 'integers.dart';

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
      appBar: AppBar(
        title: Text("Second Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: sample.length,
            itemBuilder: (context, index){
              return Row(
                children: [
                  Text(sample[index].toString()),
                  Text(index.toString()),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}



