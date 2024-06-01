import 'package:flutter/material.dart';
import 'package:leancode/buttions.dart';

class alert_dialog extends StatefulWidget {
  const alert_dialog({super.key});

  @override
  State<alert_dialog> createState() => _alert_dialogState();
}

class _alert_dialogState extends State<alert_dialog> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('alert'),
        backgroundColor: const Color.fromARGB(189, 105, 240, 175),
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [
              DrawerHeader(
                child: Container(
                  color: Colors.lightBlue,
                ),
              ),
              ListTile(
                title: Text('starred'),
                leading: Icon(Icons.star),
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.black26,
        child: Center(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23)),
                ),
                fixedSize: MaterialStateProperty.all(Size.fromRadius(50))),
            onPressed: () {
                _showMyDialog(context);
            },
            child: Center(
              child: Icon(
                Icons.person,
                size: 56,
                color: Colors.black26,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<void>_showMyDialog(BuildContext context)async{
  return showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            backgroundColor: Colors.red[100],
              title: Text('Alert!'),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text('this is first text'),
                  Text(('this is second one '))
                ],
              ),
    ),
            actions:[
               TextButton(onPressed: (){
                 Navigator.pop(context);
               },
                   child: Text('ok'))
            ],
          );
  });
}