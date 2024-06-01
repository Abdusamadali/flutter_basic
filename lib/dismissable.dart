import 'package:flutter/material.dart';

class dismissable extends StatefulWidget {
  const dismissable({super.key});

  @override
  State<dismissable> createState() => _dismissableState();
}

class _dismissableState extends State<dismissable> {
  List<String>fruits=['Olivia',
    'Noah', 'Sophia', 'Liam', 'Ava', 'William', 'Isabella', 'James', 'Charlotte', 'Benjamin', 'Mia', 'Elijah', 'Amelia', 'Lucas', 'Evelyn', ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dismissable'),
        backgroundColor: Colors.green,
      ),body: ListView.builder(
      itemCount: fruits.length,
      itemBuilder: (context,index){
        final fruit=fruits[index];
        return Dismissible(
          onDismissed: (direction){
            if(direction==DismissDirection.startToEnd){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('removed ${fruits[index]} '))
              );
            }else{
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Saved ${fruits[index]}')),
              );
            }
          },
          key: Key(fruit),
            background: Container(
              color: Colors.red,
            ),
            secondaryBackground: Container(
              color: Colors.green,
            ),
          child: Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(fruits[index]),
            ),
          )
        );
      },
    ),
    );
  }
}
