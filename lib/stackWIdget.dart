import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class stackwidget extends StatelessWidget {
  const stackwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stack'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Stack(
          children: [
            Positioned(
              //bottom: 50,
              left: 150,
              top: 50,
              child: Container(
                width: 250,
                height: 250,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
