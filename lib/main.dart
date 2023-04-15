import 'package:easy_banking/Pages/getStarted.dart';
import 'package:easy_banking/Send%20Money/send_money.dart';
import 'package:easy_banking/screens/base_scren.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  BaseScreen(),
    );
  }
}