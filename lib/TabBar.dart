import 'package:flutter/material.dart';

class tabBar extends StatelessWidget {
  const tabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        initialIndex: 1,
        child: Scaffold(

          appBar: AppBar(
              backgroundColor: Colors.greenAccent,
            title: Text("WhatsApp"),
            bottom: TabBar(
              indicatorColor: Colors.blue,
              dividerColor: Colors.red,
              labelColor: Colors.green[900],
              unselectedLabelColor: Colors.green,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt_outlined),
                  text: "Camera",
                ),
                Tab(icon: Icon(Icons.chat_bubble),
                text: "Chats",
                ),
                Tab(icon: Icon(Icons.people),
                  text: "status",
                ),
                Tab(icon: Icon(Icons.call),
                  text: "calls",
                ),
              ],
            )
          ),
           body: TabBarView(
             children: [
               Container(
                 child: Center(
                   child: Text("camera",
                     style: TextStyle(
                         fontSize: 20
                     ),
                   ),
                 ),
               ),
               Container(
                 child: Center(
                   child: Text("chats",
                     style: TextStyle(
                       fontSize: 20
                     ),
                   ),
                 ),
               ),
               Container(
                 child: Center(
                   child: Text("status",
                     style: TextStyle(
                         fontSize: 20
                     ),
                   ),
                 ),
               ),
               Container(
                 child: Center(
                   child: Text("calls",
                     style: TextStyle(
                         fontSize: 20
                     ),
                   ),
                 ),
               ),
             ],
           ),
        ));
  }
}