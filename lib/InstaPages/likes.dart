import 'package:flutter/material.dart';


class likeui extends StatelessWidget {
  const likeui({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.cyan,child:
      Center(
        child: Text(
          'likes',
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
