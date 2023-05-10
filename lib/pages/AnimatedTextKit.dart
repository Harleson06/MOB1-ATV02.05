import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedText extends StatelessWidget {

  const AnimatedText({Key? key}) : super(key: key);

  static const colorizeColors = [
    Colors.pinkAccent,
    Colors.blue,
    Colors.green,
    Colors.red,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Kit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250.0,
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Harleson Candido',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                  ColorizeAnimatedText(
                    'Silva',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                  ColorizeAnimatedText(
                    'De Queiroz',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
