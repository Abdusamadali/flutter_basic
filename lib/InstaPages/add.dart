import 'package:flutter/material.dart';


class addui extends StatelessWidget {
  const addui({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.cyan,child:
      Center(
        child: Text(
          'Add',
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
