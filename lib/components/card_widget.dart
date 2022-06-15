// ignore_for_file: camel_case_types, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kid_game/components/functions/functions.dart';
import 'package:outlined_text/outlined_text.dart';

class kCard extends StatelessWidget {
  kCard({
    Key? key,
    required this.screenWidth,
    required this.img,
    required this.page,
    required this.name,
    required this.word,
    required this.player,
  }) : super(key: key);

  final double screenWidth;
  final String img;
  final String name;
  final String word;
  var player;
  var page;

  @override
  Widget build(BuildContext context) {
    double screenShortestSide = MediaQuery.of(context).size.shortestSide;
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => page,
                  ));
            },
            child: Container(
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
                          flex: 2,
                          child: Container(
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
                                      padding: EdgeInsets.only(
                                          left: screenWidth * 0.015),
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
                                          fit: BoxFit.cover,
                                          child: OutlinedText(
                                            text: Text(name),
                                            strokes: [
                                              OutlinedTextStroke(
                                                  color: Colors.black,
                                                  width: 2),
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
            ),
          );
        } else {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => page,
                ),
              );
            },
            child: Container(
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
                          flex: 2,
                          child: Container(
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
                                      padding: EdgeInsets.only(
                                          left: screenWidth * 0.015),
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
                                                  color: Colors.black,
                                                  width: 2),
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
            ),
          );
        }
      },
    );
  }
}
