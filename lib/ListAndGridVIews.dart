import 'package:flutter/material.dart';

class listGrid extends StatelessWidget {

  //
   List<String>fruits=['mango','banana','pineapple','graphs','strawberry','oranges',
  'avocado','watermilon','Apricot','guava','papaya','cherry','bluberry','lemon', ];
   List<String>man=['samad','javed','dutta','taslima','abhishek','jatin','mithun',
   'rohan','sohan','bibek','aishwarya','nisha','kartic','nitin','priyanshu','mousham'];
    Map<String,List<String>> mp={
     'fruits' : ['mango','banana','pineapple','graphs','strawberry','oranges',
       'avocado','watermilon','Apricot','guava','papaya','cherry','bluberry','lemon' ],
     'man':['samad','javed','dutta','taslima','abhishek','jatin','mithun',
       'rohan','sohan','bibek','aishwarya','nisha','kartic','nitin']
} ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('List grid'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.green.shade100,
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context,index) {
        //     return Card(
        //       elevation: 2,
        //       color: Colors.pink.shade100,
        //       child: ListTile(
        //         title: Text(
        //             fruits[index],
        //             style: TextStyle(
        //               fontSize: 20,
        //             ),
        //         ),
        //         subtitle: Text('samad'),
        //       ),
        //     );
        //   },
       child: ListView.builder(
         itemCount:fruits.length ,
         itemBuilder:(context,index){
          return Card(
            child: ListTile(
              leading: Icon(Icons.person),
              onTap: (){
                print('${(mp['man']![index])} has eaten th frutis');
              },
              title: Text(
                  mp['fruits']![index],
              ),
              subtitle: Text(mp['man']![index]),
            ),
          );
         } ,
       ),
      ),
    );
  }
}
