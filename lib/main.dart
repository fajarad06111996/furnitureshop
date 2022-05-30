import 'package:flutter/material.dart';
import 'package:furnitureshop/utama/utama_page.dart';
import 'package:furnitureshop/login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App V 1.0',
      theme: ThemeData(
        primaryColor: Color(0xFFCC8053),
      ),
      // home: UtamaPage(),
      home: LoginPage(),
    );
  }
}
