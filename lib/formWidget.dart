import 'package:flutter/material.dart';

class formWidget extends StatefulWidget {
  const formWidget({super.key});

  @override
  State<formWidget> createState() => _formWidgetState();
}

class _formWidgetState extends State<formWidget> {
  var _password=TextEditingController();
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Form '),backgroundColor: Colors.grey,),
      body: Container(
        color: Colors.white,
         child: Form(
           key: _formkey,
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   color: Colors.white,
                   margin: EdgeInsets.all(20),
                   child: TextFormField(
                     validator: (value) {
                       if(value!.isEmpty){
                         return 'enter name';
                       }
                       if(value.length<=3){
                         return 'enter value greater then 3';
                       }
                       return null;
                     },
                     decoration: InputDecoration(
                       label: Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: Text('name'),
                       ),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20)

                       )
                     ),
                   ),
                 ),
               ),
               Padding(

                 padding: const EdgeInsets.only(top: 10,left: 8,right: 8,bottom: 10),
                 child: Container(
                   color: Colors.white,
                   margin: EdgeInsets.all(20),
                   child: TextFormField(
                    keyboardType: TextInputType.phone,
                     validator: (value) {
                       if(value!.isEmpty){
                         return 'enter mobile number';
                       }
                       if(value.length<=9){
                         return 'enter value greater then 3';
                       }
                       return null;
                     },
                     decoration: InputDecoration(
                         label:  Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: Text('Phone no'),
                         ),
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20)
                         )
                     ),
                   ),
                 ),
               ),
               Padding(

                 padding: const EdgeInsets.only(top: 10,left: 8,right: 8,bottom: 10),
                 child: Container(
                   color: Colors.white,
                   margin: EdgeInsets.all(20),
                   child: TextFormField(
                     controller: _password,
                     keyboardType: TextInputType.phone,
                     validator: (value) {
                       if(value!.isEmpty){
                         return 'enter password';
                       }
                       if(value.length<=2){
                         return 'enter value greater then 3';
                       }
                       return null;
                     },
                     decoration: InputDecoration(
                         label:  Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: Text('password'),
                         ),
                         hintText: 'enter you password',
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20)
                         )
                     ),
                   ),
                 ),
               ),
               Padding(

                 padding: const EdgeInsets.only(top: 10,left: 8,right: 8,bottom: 10),
                 child: Container(
                   color: Colors.white,
                   margin: EdgeInsets.all(20),
                   child: TextFormField(
                     keyboardType: TextInputType.phone,
                     validator: (String? value) {
                       if(value!=_password.value.text){
                         return 'enter same password';
                       }

                       return null;
                     },
                     decoration: InputDecoration(
                         label:  Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: Text('confirm password'),
                         ),
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20)
                         )
                     ),
                   ),
                 ),
               )
             ],
           ),
         ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
          _formkey.currentState?.validate();
      },
      child: Icon(Icons.done),)
      ,
    );

  }
}
