import 'package:flutter/material.dart';

class snackbarwidget extends StatelessWidget {
  const snackbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
     title: Text('snackbar',),
      backgroundColor: Colors.green,
    ),
    body: Container(
      color: Colors.grey.shade100,
      child: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green)
          ),
          child: Text('click here!',
          style: TextStyle(
              color: Colors.black
          ),
          ),
          onPressed: (){
            final snackbar=SnackBar(
              backgroundColor: Colors.grey,
                duration: Duration(seconds: 1,),
                behavior: SnackBarBehavior.floating,
                action: SnackBarAction(label: 'undo',
                textColor: Colors.blue,
                onPressed: (){},
                ),
                content: Text('this is snackbar'));
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
        ),
      ),
    ),
  );
  }
}
