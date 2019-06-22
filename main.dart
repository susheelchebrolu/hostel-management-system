import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'post_a_problem.dart';
import 'snackbar.dart';
import 'Myproblems.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    MainPage.tag: (context) => MainPage(),
    SnackBarDemo.tag: (context) => SnackBarDemo(),
    Myproblems.tag: (context) => Myproblems(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hostel app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
