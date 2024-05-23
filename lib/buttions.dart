import 'package:flutter/material.dart';

import 'ListAndGridVIews.dart';

class buttions extends StatelessWidget {
  const buttions({super.key});

  @override
  Widget build(BuildContext context) {
    var h= MediaQuery.of(context).size.height;
    var w= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('buttons'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                listGrid();
              },
              child: Text(
                  'click me',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlue)
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: (){},
                child: Text(
                  'click me',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  elevation: MaterialStateProperty.all(15),
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlue.withOpacity(.01))
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextButton(
                onPressed: (){},
                child: Text(
                    'click',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.red),
                overlayColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.hovered))
                    return Colors.blueAccent.withOpacity(0.04);
                  else if (states.contains(MaterialState.focused) || states.contains(MaterialState.pressed))
                    return Colors.orange.withOpacity(0.12);
                  else
                    return null;
                }
                )
              ),
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: (){
                  home:listGrid();
            },
                child: Text(
                    'click here ',
                    style: TextStyle(
                      fontSize: 30
                    ),
                ),
             
            )
          ],
        ),
      ),
    );
  }
}
