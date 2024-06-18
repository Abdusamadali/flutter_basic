import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leancode/InstaPages/discover.dart';
import 'allPackage.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();

}

class _navbarState extends State<navbar> {
  PageController _controller=PageController();
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _controller,
          children: [
            homeui(),
            discoverui(),
            addui(),
            likeui(),
            instaui(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: (vale){
          setState(() {
            index=vale;
            _controller.jumpToPage(index);
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon((index==0)?Icons.home:Icons.home_outlined,color: Colors.pink,),
              label:'home'
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
              icon: Icon((index==1)?Icons.explore:Icons.explore_outlined,color: Colors.pink,),
              label:'discover',
          ),
          BottomNavigationBarItem(
              icon: Icon((index==2)?Icons.add_circle:Icons.add_circle_outlined,color: Colors.pink,size: 35,),
              label:'Add'
          ),
          BottomNavigationBarItem(
              icon: Icon((index==3)?Icons.favorite:Icons.favorite_outline,color: Colors.pink,),
              label:'Profile'
          ),
          BottomNavigationBarItem(
              icon: Icon((index==4)?Icons.person:Icons.person_outline,color: Colors.pink,),
              label:'Profile'
          )
        ],
      ),
    );
  }
}
