import 'package:flutter/material.dart';
import 'package:leancode/ui.dart';
import 'allPackage.dart';

// void main() => runApp(myapp());
//
// class myapp extends StatelessWidget {
//   const myapp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Colors.green
//       ),
//       home: drawer(),
//     );
//   }
// }
void main() => runApp(myapp());

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ui(),
    );
  }
}
