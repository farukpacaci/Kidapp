// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:outlined_text/outlined_text.dart';
import 'package:flutter_tts/flutter_tts.dart';

class kColoredCard extends StatelessWidget {
  kColoredCard({
    Key? key,
    required this.screenWidth,
    required this.color,
    required this.name,
    required this.word,
  }) : super(key: key);

  final double screenWidth;
  var color;
  final String name;
  final String word;

  @override
  Widget build(BuildContext context) {
    FlutterTts flutterTts = FlutterTts();
    Future speak() async {
      await flutterTts.speak(word);
    }

    return Container(
      width: screenWidth * 0.45,
      height: screenWidth * 0.45,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF348F50).withOpacity(0.5),
            const Color(0xFF56B4D3).withOpacity(0.5),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: const [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: screenWidth * 0.01,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: screenWidth * 0.015),
                              child: GestureDetector(
                                onTap: () => speak(),
                                child: Image.asset(
                                  "assets/icons/speaker.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.01,
                                  top: screenWidth * 0.02),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: OutlinedText(
                                  text: Text(name),
                                  strokes: [
                                    OutlinedTextStroke(
                                        color: Colors.black, width: 2),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
