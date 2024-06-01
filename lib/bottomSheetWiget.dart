import 'package:flutter/material.dart';

class bottomsheetwidget extends StatelessWidget {
  const bottomsheetwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('BottomSheet'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)
            )
          ),
            backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
             fixedSize: MaterialStateProperty.all(Size(100, 100))
          ),
          onPressed: (){
            showModalBottomSheet(
              backgroundColor: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                isDismissible: true,
                enableDrag: true,
                context: context,
                builder: (context){
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text('turned off'),
                  ),
                  ListTile(
                    title: Text('you can on later'),
                  ),
                  ListTile(
                    title: Text('there is another options '),
                  )
                ],
              );
            });
          },
          child: Center(child: Icon(Icons.alarm_off_rounded,
          size: 50,)),
        ),
      ),
    );
  }
}
