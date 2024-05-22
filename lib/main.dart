import 'package:flutter/material.dart';
import 'package:leancode/rowcols.dart';
import 'buttions.dart';
import 'container_box.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: buttions(),
    );
  }
}
