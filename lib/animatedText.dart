import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class animated extends StatelessWidget {
  const animated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animated Text'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              child: AnimatedTextKit(animatedTexts: [
                TypewriterAnimatedText(
                    'hello...TypeWrite',
                    textStyle: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                  speed: Duration(milliseconds: 200)
                ),

              ],
                isRepeatingAnimation: true,
                repeatForever: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
