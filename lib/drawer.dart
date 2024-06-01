import 'package:flutter/material.dart';


class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer'),
        backgroundColor: Colors.black12,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.grey,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                color:  Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 5),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: NetworkImage(''),

                            )),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('abdus samad ali'),
                              Text('abdussamadali05@mail.com',
                              style: TextStyle(
                                fontSize: 10
                              ),
                              )
                            ],),
                        )
                      ],
                    ),
              )
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('folder'),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('share with me'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('starred'),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text('updoad'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('share'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('logout'),
              ),
            ],
          ),
        ),
      ),
      body: Container(
    color: Colors.grey,
      ),
    );
  }
}
