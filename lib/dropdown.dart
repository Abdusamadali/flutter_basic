import 'package:flutter/material.dart';


class dropdown extends StatefulWidget {
  const dropdown({super.key});

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {

  List<String> fruits=[
    'orange',
    'mango',
    'banana',
    'strawberry',
    'apple',
    'guava',
    'grapes'
  ];
  String selectedvalue='orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            width: double.infinity,
            color: Colors.yellow[100],
            height: 50,
            child: DropdownButton(
              icon: Icon(Icons.arrow_downward),
              dropdownColor: Colors.grey,
              borderRadius: BorderRadius.circular(30),
              value: selectedvalue,
              items: fruits.map((String values){
                return DropdownMenuItem(
                  value: values,
                    child: Text(values,style: TextStyle(color: Colors.black),),);
              }).toList(),
              onChanged: ( newvalue) {
                setState(() {
                  selectedvalue=newvalue!;
                });
            },
            ),
          ),
        ],
      ),
    );
  }
}
