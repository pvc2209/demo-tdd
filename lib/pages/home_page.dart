import 'package:demo_tdd/models/counter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Counter App"),
        //   centerTitle: true,
        // ),
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text(
        //         counter.count.toString(),
        //         style: TextStyle(fontSize: 30),
        //       ),
        //       SizedBox(height: 30),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           ElevatedButton(
        //             onPressed: () {
        //               setState(() {
        //                 counter.decrement();
        //               });
        //             },
        //             child: Text("-"),
        //           ),
        //           SizedBox(width: 20),
        //           ElevatedButton(
        //             onPressed: () {
        //               setState(() {
        //                 counter.increment();
        //               });
        //             },
        //             child: Text("+"),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
