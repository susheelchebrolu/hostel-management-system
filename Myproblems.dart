import 'package:flutter/material.dart';

void main() {
  runApp(Myproblems());
}

class Myproblems extends StatelessWidget {
  static String tag = 'myproblems';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'resolved',),
                Tab(text: 'unresolved',),
              ],
            ),
            title: Text('My Problems'),
          ),
          body: TabBarView(
            children: [
              Text("Unresolved Problems"),
              Text("Resolved Problems"),
              ],
          ),
        ),
      ),
    );
  }
}