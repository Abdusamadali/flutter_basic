import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leancode/InstaPages/add.dart';


class instaui extends StatefulWidget {
  const instaui({super.key});

  @override
  State<instaui> createState() => _instauiState();
}

class _instauiState extends State<instaui> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height ;
    double w=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(

            child: Column(
              children: [
                Container(
                  color: Colors.white24,
                  height:60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios_new),
                        SizedBox(width: 8),
                        Text(
                          "wanda.s",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:30,
                          ),
                        )
                      ],
                    ),
                  ),
                ),//back and name
                Container(
                  width: w,
                  height: 150,
                  color: Colors.white24,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 20,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/img_1.png'),
                          radius: 40,
                        ),
                      ),//image
                      Positioned(
                        top: 103,
                        left: 20,
                        child: Text('wanda S.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ),
                      Positioned(
                        top: 126,
                        left: 20,
                        child: Text('phototgrapher / New York',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.red
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          color: Colors.white24,
                          height: 110,
                          width: 250,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text('150',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                          ),
                                        ),
                                        SizedBox(height: 0,),
                                        Text(
                                          'Post',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('50k',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                          ),
                                        ),
                                        SizedBox(height: 0,),
                                        Text(
                                          'Followers',
                                          style: TextStyle(
                                              fontSize: 13
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('100',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                          ),
                                        ),
                                        SizedBox(height: 0,),
                                        Text(
                                          'Following',
                                          style: TextStyle(
                                              fontSize: 13
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 23,
                                bottom: 0,
                                child: ElevatedButton(onPressed: (){},
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  style: ButtonStyle(
                                      elevation: WidgetStatePropertyAll(0),
                                      backgroundColor: WidgetStateProperty.all(Colors.blue),
                                      minimumSize: WidgetStateProperty.all(Size(140,30))
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 0,
                                child: IconButton(
                                  onPressed: null,
                                  icon:Icon(Icons.expand_circle_down_outlined,
                                      color: Colors.blue,
                                      size: 36),
                                ),
                              )
                            ],
                          ),
                        ),

                      )
                    ],
                  ),
                ), //upper container
                Container(
                  height: 100,
                  padding: EdgeInsets.only(left: 9),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          Text("New")
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          Text("New")
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          Text("New")
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          Text("New")
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          Text("New")
                        ],
                      ),
                      SizedBox(width: 5,),Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          Text("New")
                        ],
                      ),
                      SizedBox(width: 5,),Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          Text("New")
                        ],
                      ),
                      SizedBox(width: 5,),Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          Text("New")
                        ],
                      ),
                      SizedBox(width: 5,),Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                          ),
                          Text("New")
                        ],
                      ),
                      SizedBox(width: 5,),





                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: (
                      BoxDecoration(
                          color: Colors.white24,
                          border: Border(
                              top: BorderSide(
                                  color: Colors.black,
                                  width: 1
                              ),
                              bottom: BorderSide(
                                  color: Colors.black,
                                  width: 1
                              )
                          )
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Email',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18
                        ),
                      ),
                      VerticalDivider(
                        indent: 12,
                        endIndent: 16,thickness: 2,
                      ),
                      Text('Site', style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18
                      ),),
                      VerticalDivider(
                        indent: 12,
                        endIndent: 16,
                        thickness: 2,
                      ),
                      Text('Phone', style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18
                      ),),

                    ],
                  ),//Email,site,phone
                  height: 60,
                ),
                Container(
                  color: Colors.white24,
                  height: 60,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.grid_on_sharp,
                          color: Colors.blue,),
                        Icon(Icons.view_day_outlined,
                          color: Colors.blue,),
                        Icon(Icons.person_outline,
                          color: Colors.blue,),
                        Icon(Icons.favorite_outline,color: Colors.blue,)
                      ]
                  ),
                ),//Icons
                Container(
                    width: w,
                    height: 500,
                    color: Colors.white24,
                    child: GridView.count(crossAxisCount: 4,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width:50 ,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img_2.png')
                                  )
                              )
                          ),
                        ),
                      ],)
                )//gallery
              ],
            )
        ),
      ),
    );


  }
}
