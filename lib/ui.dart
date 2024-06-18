import 'dart:io';

import 'package:flutter/material.dart';


class ui extends StatefulWidget {
  const ui({super.key});

  @override
  State<ui> createState() => _uiState();
}

class _uiState extends State<ui> {
  int heart=20;
  int upload=34;
  int chat=82;
  int smiley=295;
  @override
  Widget build(BuildContext context) {

    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(
      children:[
        Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: h,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
             child: Image.asset('assets/images.jpeg',
               fit: BoxFit.cover,
             ),
            height: h/2,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
                    ),
          ),
          Positioned(
            top: h/2,
            bottom: 0,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:  Container(
                        height: 120,
                        width: w,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[ Text(
                            'Madrid city tour for designers',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                            Text(
                              'city madrid explains designer excellance',
                              style: TextStyle(
                                  color: Colors.grey,
                                fontStyle: FontStyle.italic
                              ),
                            )
                      ]
                        ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Row(//for likes and download
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('$heart',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19
                              ),
                            ),
                            SizedBox(width: 0,),
                            IconButton(onPressed: (){
                              setState(() {

                                heart++;
                              });
                            }, icon: Icon(color: Colors.pink,(heart>20)?Icons.favorite:Icons.favorite_border_outlined)),
                        ]
                        ),
                        Row(
                          children: [
                            Text('$upload',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19
                              ),
                            ),
                            SizedBox(width: 4,),
                            IconButton(onPressed: (){
                              setState(() {
                                upload++;
                              });
                            }, icon: Icon(
                                color: Colors.pink,
                              (upload>34)? Icons.upload:Icons.upload_outlined
                            ))
                          ],
                        ),
                        Row(
                          children: [
                            Text('$chat',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19
                              ),
                            ),
                            SizedBox(width: 4,),
                            IconButton(onPressed: (){
                              setState(() {
                                chat++;
                              });
                            }, icon: Icon(color: Colors.pink,(chat>82)?Icons.chat_bubble:Icons.chat_bubble_outline)),
                          ],
                        ),
                        Row(
                          children: [
                            Text('$smiley',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19
                              ),
                            ),
                            SizedBox(width: 4,),
                            IconButton(onPressed: (){
                              setState(() {
                                smiley++;
                              });
                            }, icon: Icon(
                              color: Colors.pink,
                                (smiley>295)?Icons.emoji_emotions:Icons.emoji_emotions_outlined)),
                          ],
                        ),
                      ],
                    ),
                        ),
                  //for status record
                  Divider(
                    height: 40,
                    color: Colors.black12,
                   thickness: 1,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15),
                    child: Container(
                      child: Text(
                        'Umm...anyone giving this more than two bubbles is interesting. This was a horrible "tour". It is like a glorified city bus really. The "guide" or what ever the title is doesnt speak to you at all which is why I dont know what they are called. They get on the microphone when they are approaching a stop and just call out the stop name....similar to a bus or train or some public transportation service. I was never offered a headset or guide. I honestly didn\'t see any basket or place to grab one and only realized that was an option when i saw someone else coming off the bus from the upstairs section with one. No one communicates with you at all which is sad. Apparently there is a way to plug in their headphones and I guess there is some recording you can listen to but who knows. Do not spend your money or precious time doing this. Find a real tour that will have guides that talk to you or talk at all about their city. Madrid is not the friendliest city overall IMO and this bus ride really made that stand out. I wish I had something better to say because it is such a beautiful city and I wish I took a real tour.'
                      ),
                    ),
                  )
                ],
              ),
          ),
          ),
        Positioned(
          right: 25,
            bottom: 350,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/img_1.png'),
            ))
      ]
    )
    );
  }
}


