import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LainPage extends StatefulWidget {
  const LainPage({Key? key}) : super(key: key);

  @override
  State<LainPage> createState() => _LainPageState();
}

class _LainPageState extends State<LainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Halaman Lain'),
      ),
    );
  }
}
