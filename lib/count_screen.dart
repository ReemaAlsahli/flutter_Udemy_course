import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  //1. constructor
  //2. initstate
  //3. build

  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text('Plus', style: TextStyle(fontSize: 30.0))),
            Text(
              '$count',
              style: TextStyle(fontSize: 40.0),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                child: Text('Mine', style: TextStyle(fontSize: 30.0))),
          ],
        ),
      ),
    );
  }
}
