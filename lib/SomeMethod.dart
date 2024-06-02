import 'package:flutter/material.dart';


class method extends StatefulWidget {
  const method({super.key});

  @override
  State<method> createState() => _methodState();
}

class _methodState extends State<method> {
  List<String> name=['samad','javed','abddul','toushif','abhishek','dutta','salman'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('methods'),
        backgroundColor: Colors.pink.withOpacity(0.4),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: name.map((e) => Container(margin: EdgeInsets.all(5),child: Text(e,style: TextStyle(fontSize: 30),),color: Colors.pink.withOpacity(0.3))
            ).toList(),
          ),
        ),
      ),
    );
  }
}
