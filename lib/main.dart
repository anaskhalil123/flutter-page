import 'package:assignment_1/first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: FirstPage(),
      theme: ThemeData(fontFamily: 'Amiri'),
      debugShowCheckedModeBanner: false,
    ));
  }
}
