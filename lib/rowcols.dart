import 'package:flutter/material.dart';

class rowcol extends StatelessWidget {
  const rowcol({super.key});

  @override
  Widget build(BuildContext c) {
    var h=MediaQuery.of(c).size.height;
    var w=MediaQuery.of(c).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Row cols'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        color: Colors.grey,
        height: h,
        width: w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            Container(height: 50,width: 50,color: Colors.orange,),
            Container(height: 50,width: 50,color: Colors.blue,),
            Container(height: 50,width: 50,color: Colors.green,),
            Container(height: 50,width: 50,color: Colors.white,),
            Container(height: 50,width: 50,color: Colors.pinkAccent,),

          ],
        ),
      ),
    );
  }
}
