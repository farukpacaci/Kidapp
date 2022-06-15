// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:outlined_text/outlined_text.dart';

import 'functions/functions.dart';

class kCardUndirection extends StatelessWidget {
  const kCardUndirection({
    Key? key,
    required this.screenWidth,
    required this.img,
    required this.name,
    required this.word,
  }) : super(key: key);

  final double screenWidth;
  final String img;
  final String name;
  final String word;

  @override
  Widget build(BuildContext context) {
    double screenShortestSide = MediaQuery.of(context).size.shortestSide;
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
                Expanded(
                  flex: 3,
                  child: Container(
                    width: screenShortestSide * 0.8,
                    height: screenShortestSide * 0.8,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(img),
                      ),
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
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: screenWidth * 0.015),
                              child: GestureDetector(
                                onTap: () {
                                  FunctionOfCompenents.instance
                                      .speakTitle(word);
                                },
                                child: Image.asset(
                                  "assets/icons/speaker.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: screenShortestSide * 0.01),
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: OutlinedText(
                                    text: Text(name),
                                    strokes: [
                                      OutlinedTextStroke(
                                          color: Colors.black, width: 2),
                                    ],
                                  ),
                                )),
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
