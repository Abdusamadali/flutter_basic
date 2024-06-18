import 'package:flutter/material.dart';


class homeui extends StatelessWidget {
  const homeui({super.key});

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        height: h,
        width: w,
        color: Colors.cyan,child:
        Center(
          child: Text(
            'home',
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
