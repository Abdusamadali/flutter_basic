import 'package:flutter/material.dart';


class discoverui extends StatelessWidget {
  const discoverui({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.cyan,child:
      Center(
        child: Text(
          'discover',
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      ),
    );
  }
}
