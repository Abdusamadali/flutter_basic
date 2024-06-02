import 'package:flutter/material.dart';
import 'allPackage.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int selectedIndex=0;
  // List<Widget>widgets=[
  //   Text('home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  //   Text('search',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),
  //   Text('Add',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),
  //   Text('profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40))
  // ];
  PageController pageController=PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   title: Text('Bottom Navigation '),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          drawer(),
          snackbarwidget(),
          animated(),
          dismissable()
        ],

      ),
      bottomNavigationBar:BottomNavigationBar(

        items:
          const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'home'
          ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label:'search'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label:'Add'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label:'Profile'
            )
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index){
          setState(() {
            selectedIndex=index;
            pageController.jumpToPage(selectedIndex);
          });
        },
      )
    );
  }
}
