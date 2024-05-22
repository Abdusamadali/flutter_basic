import 'package:flutter/material.dart';

class Container_Box extends StatefulWidget {
  const Container_Box({super.key});

  @override
  State<Container_Box> createState() => _Container_BoxState();
}

class _Container_BoxState extends State<Container_Box> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('container and box '),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          height: 250,
          width: 250,
          decoration:BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(140),
              bottomRight: Radius.circular(140)
            ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 5,
                  color: Color(0xff5ce10e),
                )
              ]
          ),
          child: Center(
            child: Text(
                'hello',
              style: TextStyle(
                fontSize: 30,
                color: Colors.redAccent
            ),
            ),
          ),
        ),
      ),
    );
  }
}
