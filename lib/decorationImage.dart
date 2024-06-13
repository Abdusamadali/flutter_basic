import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class decorationImageWidget extends StatefulWidget {
  const decorationImageWidget({super.key});

  @override
  State<decorationImageWidget> createState() => _decorationImageWidgetState();
}

class _decorationImageWidgetState extends State<decorationImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('stack'),
      ),
      body: Center(
        child: Container(width: 300,
          height: 250,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white24,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius:25,
              )
            ],
            image: DecorationImage(
              image:AssetImage(
                "assets/img.png"
              ),
                 fit: BoxFit.cover,
            )

          ),

        ),
      )
    );
  }
}
